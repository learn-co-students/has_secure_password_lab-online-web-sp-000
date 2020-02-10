class UsersController < ApplicationController
    def new
        
    end

    def create
        if params[:user][:password_confirmation] == params[:user][:password]
           @user = User.create(user_params)
            session[:user_id] = @user.id
        else
            redirect_to '/signup'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end