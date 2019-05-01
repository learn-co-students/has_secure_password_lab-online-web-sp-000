class UsersController < ApplicationController
  def new
  end

  def create
    return redirect_to new_user_path unless params[:user][:password] == params[:user][:password_confirmation]
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    return redirect_to new_session_path unless sessions[:user_id] == params[:id]
    @user = User.find_by_id(sessions[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
#
