class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if params[:password] == params[:password_confirmation]
      if @user.save
      session[:user_id] = @user.id
      # need to make this dry - how to run controller: 'session' action: 'create' properly? sessions are not the Users controller's concern.
      # a helper method in for the sessions controller would work. Has both the Users controller and the Sessions controller user the login method
      else 
        redirect_to controller: 'users', action: 'new' 
      end
    else
      redirect_to controller: 'users', action: 'new'
      # render :new
    end
  
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
