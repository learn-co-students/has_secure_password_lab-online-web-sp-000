class UsersController < ApplicationController
    def new
    end

    def create
        # @user = User.new(name: params[:name], password: params[:password], password_confirmation: params[:password_confirmation])
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/home'
        else
            redirect_to '/signup'
        end
    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end