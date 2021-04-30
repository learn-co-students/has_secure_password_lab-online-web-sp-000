class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        if @user.password_confirmation != params[:password]
            redirect_to new_user_path
        end
    end

    def index
    end

    private

    def user_params
        params.require(:user).permit(:name, :password_confirmation, :password)
    end

end