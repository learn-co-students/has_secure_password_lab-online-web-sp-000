class SessionsController < ApplicationController

    def create
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to root_url
        else
            redirect_to '/new'
        end
    end
end