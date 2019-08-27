class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if params.any? {|p| p.empty?} || params[:user][:password] != params[:user][:password_confirmation]
      redirect_to signup_path
    else
      @user = User.create(strong_params)
      session[:user_id] = @user.id
      redirect_to root_path
    end
  end

  private

  def strong_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
