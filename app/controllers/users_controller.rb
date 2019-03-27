class UsersController < ApplicationController
  def create
    return redirect_to new_user_url unless user_params[:password] == user_params[:password_confirmation]
    @user = User.create(user_params)
    session[:user_id] = @user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
