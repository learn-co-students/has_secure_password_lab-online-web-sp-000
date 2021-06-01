class UsersController < ApplicationController

    def new
        # responsible for signup
        @user = User.new(params[:user][:name])
        @user.save
    end

    def create
            @user = User.create(user_params)
            session[:user_id] = @user.id
            # byebug
            if @user.authenticate(user_params)
                # current_user = @user.id
                #byebug
                redirect_to root_path   
            else
                #byebug
                redirect_to signup_path
            end
        # responsible for logging in
        # byebug
    end

    def welcome

    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end