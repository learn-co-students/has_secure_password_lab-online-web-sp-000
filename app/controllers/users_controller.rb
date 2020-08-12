class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if params[:user][:password] == params[:user][:password_confirmation]
      User.create(user_params)
      session[:user_id] = User.last.id
      redirect_to users_show_path
    else
      flash[:notice] = "Passwords dont match...try again"
      redirect_to users_new_path
    end
  end

  def show
    @user = User.find_by_id(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
