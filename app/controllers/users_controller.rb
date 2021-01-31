class UsersController < ApplicationController
  def create
    puts params

    if params[:user][:password] != params[:user][:password_confirmation]
      redirect_to '/users/new'
    else

      @user = User.create(user_params)
      session[:user_id] = @user.id
      redirect_to '/'
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end


end
