class UsersController < ApplicationController

  def new

  end

  def create
    user = User.create(u_params)
    if params[:user][:password] == params[:user][:password_confirmation]
      session[:user_id] = user.id
    else
      redirect_to new_user_path
    end
  end

  private

  def u_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
