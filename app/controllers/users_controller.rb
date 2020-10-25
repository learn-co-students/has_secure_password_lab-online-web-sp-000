class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.authenticate(user_params[:password]) && @user.password_valid?
      session[:user_id] = @user.id
      render '/users/show'
    else
      redirect_to '/users/new'
    end
  end

  def show
    binding.pry
  end


  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
