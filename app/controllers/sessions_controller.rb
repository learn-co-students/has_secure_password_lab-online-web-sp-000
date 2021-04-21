require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    #binding.pry
    if @user.present? && @user.authenticate(params[:user][:password])
          

      session[:user_id] = @user.id
      redirect_to root_path(@user)
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end


  def destroy
    session.delete :user_id
    redirect_to controller: 'users', action: 'new'
  end

    
end
