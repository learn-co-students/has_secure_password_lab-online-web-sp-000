class UsersController < ApplicationController
    def new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:name] = @user.name
            session[:user_id] = @user.id
            redirect_to "/users/#{@user.id}"
        else
            redirect_to "/users/new" 
        end
    end

    def show
        @user = User.find(params[:id])
        if session[:name] != @user.name
            redirect_to "/users/new"
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
