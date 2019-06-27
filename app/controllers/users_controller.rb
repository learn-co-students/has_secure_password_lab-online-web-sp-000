class UsersController < ApplicationController
    def new
    end
    
    def create
        # binding.pry
        @user ||= User.create(user_params)
        # binding.pry
        return redirect_to new_user_path if @user.errors.messages.any?
        session[:user_id] = @user.id
    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
