class SessionsController < ApplicationController

  def create
    if valid_user_and_password?
      @user = User.create(user_params)
      session[:user_id] = @user.id
      #binding.pry
    end
  end

  def valid_user_and_password?
    params[:user][:name].present? && params[:user][:password].present?

    #binding.pry
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
