class UsersController < ApplicationController

 def index
 end
 def new
   # render 'users/new.html.erb'
 end

 def create
   User.create(user_params)
 end

 private

 def user_params
   params.require(:user).permit(:username, :password, :password_confirmation)
 end

end
