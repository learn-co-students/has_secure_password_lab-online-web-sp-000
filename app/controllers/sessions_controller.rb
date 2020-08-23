class SessionsController < ApplicationController
    helper_method :current_user
    
    def new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        if @user.nil?
            redirect_to '/login'
        else
            if @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                redirect_to home_url
            else
                redirect_to '/login'
            end
        end
    end

    def destroy
        session.destroy
        redirect_to '/login'
    end

    def home
    end

    def current_user
        User.find(session[:user_id])
    end

    def login_params
        params.require(:user).permit(:name, :password)
    end
end