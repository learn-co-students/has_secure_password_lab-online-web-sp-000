class UsersController < ApplicationController

    def new
        @user=User.new
    end

    def create
        @user=User.create(user_params)
        if @user.password==@user.password_confirmation
            session[:user_id]=@user.id
            redirect_to '/welcome'
        else
            redirect_to '/users/new'
        end
    end


    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)

    end
    
 
end