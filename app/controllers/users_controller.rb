class UsersController < ApplicationController
  def new
    
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to users_path
    else 
      redirect_to new_user_path
    end
  end

  def index
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
