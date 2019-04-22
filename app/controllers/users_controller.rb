class UsersController < ApplicationController

 def new
 end

 def create
   @user = User.new(user_params)
    if @user.password == @user.password_confirmation
      @user.save
      session[:user_id] = @user.id
    else
      redirect_to '/signup'
    end
 end

 def home
 end

 private

 def user_params
   params.require(:user).permit(:name, :password, :password_confirmation)
 end

end
