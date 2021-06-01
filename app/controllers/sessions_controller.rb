class SessionsController < ApplicationController

    def new

    end
    
    def create
        @user = User.find_by(name: params[:user][:name])
        # byebug
        if !@user.authenticate(params[:user][:password])
            redirect_to signup_path
        else
        #byebug
        session[:user_id] = @user.id
        redirect_to root_path
        end
        # set a flash
    end
end