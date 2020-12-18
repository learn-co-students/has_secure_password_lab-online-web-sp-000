class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if params[:password] == params[:password_confirmation]
      session[:user_id] = params[:id]
      redirect_to '/users/show'
    else
      redirect_to '/users/new'
    end
  end
 
end
