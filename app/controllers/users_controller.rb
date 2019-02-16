class UsersController < ApplicationController

  def new
  end

  def create
    if user_params[:name] && user_params[:password] == user_params[:password_confirmation]
      user = User.create(user_params)
      session[:user_id] = user.id
      redirect_to controller: 'welcome', action: 'home'
    else
      return redirect_to(controller: 'users', action: 'new') 
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end