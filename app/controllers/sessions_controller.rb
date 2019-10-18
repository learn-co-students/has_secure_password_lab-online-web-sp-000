class SessionsController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by(name: user_params[:name])
    return head(:forbidden) unless @user.authenticate(user_params[:password])
    session[:user_id] = @user.id

    redirect_to users_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end