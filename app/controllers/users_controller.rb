class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        return redirect_to '/signup' unless @user.save
        session[:user_id] = @user.id
        redirect_to '/'
      end

    def welcome
        @user = User.find(5)
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end


end
