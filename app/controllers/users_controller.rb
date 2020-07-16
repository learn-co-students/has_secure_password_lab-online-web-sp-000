class UsersController < ApplicationController

  def welcome

  end

  def new
  end

  def create

    if params[:user][:name].present? && params[:user][:password] == params[:user][:password_confirmation]
      @user = User.create(user_params)
      session[:user_id] = @user.id
      redirect_to controller: 'users', action: 'welcome'      
    else
      redirect_to controller: 'users', action: 'new'
    end
  end

 

  private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
