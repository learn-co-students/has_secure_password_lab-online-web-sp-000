class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
  end

  def create
    @user = User.create(user_params)
    if @user.password == @user.password_confirmation
      @user.save
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      redirect_to signup_path, alert: "please retry signing up"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
