class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:alert] = user.errors.full_messages
      redirect_to signup_path
    end
  end

  def home
    if !session[:user_id]
      redirect_to login_path
    else
      @user = User.find_by(id: session[:user_id])
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
