class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to users_home_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :user_id if session[:user_id]
    redirect_to login_path
  end
end
