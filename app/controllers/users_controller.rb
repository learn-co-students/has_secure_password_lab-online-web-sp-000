class UsersController < ApplicationController

    def new

    end

    def create
        if params[:user][:password] != params[:user][:password_confirmation]
            redirect_to "/signup"
        end
        @user = User.create(user_params)
        session[:user_id] = @user.id
    end
     
      private
     
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
