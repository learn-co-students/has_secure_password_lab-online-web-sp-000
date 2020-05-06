class UsersController < ApplicationController
    def new
    end

    def welcome
        @user = User.find_by(id: session[:user_id])
    end
    
    def create
        @user = User.create(user_params)
        if @user && @user.save
            session[:user_id] = @user.id 
            redirect_to root_path
        else
            redirect_to new_user_path
        end
    end



    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end