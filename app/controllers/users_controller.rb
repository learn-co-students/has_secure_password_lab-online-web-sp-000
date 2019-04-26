class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to new_users_path if @user.authenticate(params[:user][:password])
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
