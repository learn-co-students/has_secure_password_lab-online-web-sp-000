class UsersController < ApplicationController


  def new
  end

  def create
    #create a new user with user_params
    @user = User.create(user_params)
    #if the user is not saved, redo the creation
    return redirect_to controller: 'users', action: 'new' unless @user.save
    #if the saves, set the session[:user_id] to the user's id
    session[:user_id] = @user.id
    redirect_to controller: 'welcome', action: 'home'
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
