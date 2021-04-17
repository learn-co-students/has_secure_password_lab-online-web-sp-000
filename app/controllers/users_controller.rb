class UsersController < ApplicationController

  def new
    @user = User.new()
    render "/users/signup"
  end

  def create

    if params[:user][:password] == params[:user][:password_confirmation]
      @user = User.create(user_params)
      session[:user_id] = @user.id
      redirect_to "/users/show"
    else
      redirect_to "/signup"
    end

  end

  def show
    @user = User.find_by(id: session[:user_id])

    if @user.id == session[:id] && params[:user][:id] == session[:id]
      render "/users/show"
    else
      redirect_to "/session/login"
    end
  end

  private 
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end 
end
