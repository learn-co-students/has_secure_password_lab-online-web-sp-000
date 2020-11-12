class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create, :destroy]

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to new_user_path
    end
  end

  def show
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def require_login
    redirect_to login_path unless session.include? :user_id
  end

end
