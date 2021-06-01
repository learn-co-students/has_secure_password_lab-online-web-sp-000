class UsersController < ApplicationController

    def new
        # responsible for signup form
    end

    def create # if password and password confirmation don't match
            # redirect_to signup_path unless params[:password] == params[:password_confirmation]
            #     @user = User.new(user_params)
            if params[:password] != params[:password_confirmation]
                redirect_to controller: 'users', action: 'new'
            else
                @user = User.new(user_params)
                if @user.save
                    session[:user_id] = @user.id
                    redirect_to root_path
                end
            end
    end

    def welcome
        @user = User.find_by(params[:user_id])
        render :welcome
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end