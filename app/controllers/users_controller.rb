class UsersController < ApplicationController
    def new
    end

    def create
        @user = User.create(user_params)
        redirect_to '/users/signup' unless @user.save
        session[:user_id] = @user.id
        redirect_to '/users/show'
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
     end
end