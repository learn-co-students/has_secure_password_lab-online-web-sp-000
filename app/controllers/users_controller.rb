class UsersController < ApplicationController

  def home
    @user = User.find_by_id(session[:user_id])
    if @user
      render 'home'
    else
      redirect_to(new_session_path)
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      @user.save
      session[:user_id] = @user.id
      redirect_to(users_home_path)
    else
      flash[:alert] = 'passwords did not match'
      redirect_to(new_user_path)
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
