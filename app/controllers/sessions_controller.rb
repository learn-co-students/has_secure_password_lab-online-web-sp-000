require "pry"

class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user
      if @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to homepage_path
      else 
        redirect_to new_user_path
      end
    else
      redirect_to new_user_path
    end
  end
end
