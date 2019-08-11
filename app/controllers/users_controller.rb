class UsersController < ApplicationController
    def welcome
        @user = User.find(session[:user_id])
    end
    
    def new
    end

    def create
      if params[:user][:password] == params[:user][:password_confirmation]
        user = User.create(user_params)
        session[:user_id] = user.id
      else
        redirect_to new_user_path
      end
    end
     
      private
     
      def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
      end
end
