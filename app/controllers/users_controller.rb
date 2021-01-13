class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if !@user.save 
            redirect_to new_user_path 
        else 
            session[:user_id] = @user.id
            # binding.pry
            render 'sessions/new'
        end
       
    end

    private 

    def user_params
        params.require(:user).permit(:name,:password)
    end
end
