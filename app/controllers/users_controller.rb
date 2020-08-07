class UsersController < ApplicationController

    def new
        @new_user = User.new
    end
        
    def create
        @new_user = User.new(user_params)
        if @new_user.save
            session[:user_id] = @new_user.id
            redirect_to 'root_path'
        else
            redirect_to 'new'
        end
    end




    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
