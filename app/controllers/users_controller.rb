class UsersController < ApplicationController

  def create
    # raise params.inspect
    @user = User.create(user_params)
    redirect_to '/users/new' unless password_match_confirmation
    session[:user_id] = @user.id 
  end

  private 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def password_match_confirmation
    params[:user][:password] == params[:user][:password_confirmation]
  end 
end
