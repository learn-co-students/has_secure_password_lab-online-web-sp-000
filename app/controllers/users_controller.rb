class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
    else
      redirect_to controller: 'users', action: 'new'
    end
  end

  def new
  end

  def homepage
    @user = User.find_by(id: session[:user_id])
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
