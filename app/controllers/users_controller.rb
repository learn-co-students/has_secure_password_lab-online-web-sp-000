class UsersController < ApplicationController


    def home
        if session[:user_id]
            @user = session[:user_id]
          render 'home'
        else 
           redirect_to 'new' 
        end
    end
    def new
        if session[:user_id]
            redirect_to 'home'
        else
        @user = User.new
        render 'signup'
        end
    end

    def login

        @user = User.new

    end


    def create
        if params[:password] == params[:password_confirmation]
            @user = User.create(user_params)
            session[:user_id] = @user.id
            redirect_to '/new'
        else
            redirect_to :new, alert: "Password did not match"
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
