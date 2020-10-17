class SessionsController < ApplicationController

    def create 
        @user = User.find_by(name: params[:user][:name])
        #did we find someone & did they put in the right password?
        #if @user && @user.authenticate(params[:user][:password])
  
        if @user && @user.authenticate(password: params[:user][:password])
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          flash[:error] = "Sorry, login info was incorrect. Please try again."
          redirect_to login_path
        end
    end
end
