class UsersController < ApplicationController
  skip_before_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.password == @user.password_confirmation
      @user.save
      session[:user_id] = @user.id
      redirect_to homepage_path
    else
      redirect_to signup_path, alert: "Please try again."
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end