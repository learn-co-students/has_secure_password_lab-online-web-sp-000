class UsersController < ApplicationController
  def homepage
    return redirect_to login_path if session[:user_id].blank?
  end
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      return redirect_to homepage_path
    end
    redirect_to signup_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
