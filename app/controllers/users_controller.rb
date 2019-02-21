class UsersController < ApplicationController
  def new
  end

  def create
    redirect_to users_new_path if user_params[:password] != user_params[:password_confirmation]
    @user = User.create(user_params)
    session[:user_id] = @user.id
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
