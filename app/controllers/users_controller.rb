class UsersController < ApplicationController

  def new
  end

  def create
    @session = session
    @user = User.new(user_params)
    return redirect_to controller: 'users', action: 'new' unless @user.save
    @session[:user_id] = @user.id
    redirect_to welcome_path(@user)
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :password_digest)
  end
end