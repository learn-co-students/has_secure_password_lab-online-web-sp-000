class SessionsController < ApplicationController
  def new
    if session[:user_id]
      redirect_to root_path
    end
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
    end
    redirect_to root_path
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end
end
