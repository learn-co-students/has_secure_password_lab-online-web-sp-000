class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to(controller: 'welcome', action: 'welcomepage')
    else
      redirect_to(controller: 'users', action: 'new')
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation)
    end

end
