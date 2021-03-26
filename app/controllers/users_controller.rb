class UsersController < ApplicationController
    protect_from_forgery

    def new
        @user = User.new
    end

    def create
       @user = User.create(user_params)
       if @user.save
        session[:user_id] = @user.id
        redirect_to '/home'
       else
        redirect_to '/signup'
       end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
