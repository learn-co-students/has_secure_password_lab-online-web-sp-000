class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if params[:password] == params[:password_confirmation]
      @user.save
      session[:user_id] = @user.id
      # need to make this dry - how to run controller: 'session' action: 'create' properly?
    else
      redirect_to(controller: 'users', action: 'new')
      # render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
