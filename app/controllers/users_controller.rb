class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    def create
        if params[:user][:password] != params[:user][:password_confirmation]
            flash[:alert] = "Password and Password Confirmation must match."
            redirect_to signup_path
        else
            user = User.create(user_params)
            session[:user_id] = user.id
            redirect_to welcome_path
        end
    end
    def welcome
        
    end

    def destroy
        session.delete :user_id
        redirect_to login_path
    end
    private
        def user_params
            params.require(:user).permit(:name, :password)
        end
end