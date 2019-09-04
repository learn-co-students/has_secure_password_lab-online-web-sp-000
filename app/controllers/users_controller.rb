class UsersController < ApplicationController

    def create
        if password_confirmation_matches
            @user = User.create(user_params)
            set_session_id
        else
            redirect_to new_user_path
        end
    end

    def new
    end

    private

    def password_confirmation_matches
        params[:user][:password] === params[:user][:password_confirmation]
    end

    def set_session_id
        session[:user_id] = @user.id
    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end