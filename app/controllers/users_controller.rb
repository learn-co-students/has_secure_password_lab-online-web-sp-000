class UsersController < ApplicationController

  def create
    if params[:name] == session[:name]
      redirect_to '/login'
    else
     User.create(user_params)
     redirect_to '/login'
   end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
