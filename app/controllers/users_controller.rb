
class UsersController < ApplicationController

  def welcome
    redirect_to controller: 'user', action: 'new' unless session[:password]
  end

  def new
  end

  def create
    User.creaet(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
