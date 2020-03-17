class UsersController < ApplicationController
  def new
    render "signup"
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      session[:user_id] = user.id
    else
      redirect_to action: "new"
    end
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def validate_passwords(password, confirmation)

  end
end
