class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if params[:password] != params[:password_confirmation]
      redirect_to login_path
    elsif @user.valid?
      session[:user_id] = @user.id
      redirect_to users_home_path
    else
      redirect_to users_new_path
    end
  end

  def home
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
