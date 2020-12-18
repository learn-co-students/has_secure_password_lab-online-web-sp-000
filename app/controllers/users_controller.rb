class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save && params[:password] == params[:password_confirmation]
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:alert] = @user.errors.full_messages
      redirect_to '/users/new'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
 
end
