class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            #this is like, create a new session. cuz you can't call the create action of the sessions controller

        else 
            redirect_to new_user_path
        end
        

    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end


end
