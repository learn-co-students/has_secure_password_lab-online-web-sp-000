class UsersController < ApplicationController
    def home
    end
    
    def new
    end

    def create
        user = User.create(user_params(:name, :password))
        if params[:user][:password] == params[:user][:password_confirmation] && user.authenticate(params[:user][:password])
            user.save
            session[:user_id] = user.id
        else
            redirect_to new_user_path
        end
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end