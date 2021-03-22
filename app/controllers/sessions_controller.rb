class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(name: params[:name])
        authenticated = @user.try(:authenticate, params[:password])
        if authenticated
            session[:user_id] = @user.id
            redirect_to '/welcome/show'
        else
            redirect_to '/login'
        end

    end
end
