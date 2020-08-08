class UsersController < ApplicationController

#creates a new user
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save #saves user
      session[:user_id] = @user.id #logs you in
      redirect_to homepage_path(@user)
    else
      redirect_to '/' #redirects if password and confirmation don't match 
    end
  end

  def show
  end

  private

#sets your password if the confirmation matches
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
