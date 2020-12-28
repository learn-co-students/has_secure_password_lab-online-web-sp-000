class SessionsController < ApplicationController
    def create 
        @user = User.find_by(name: params[:user][:name])&.authenticate(params[:user][:password])
        if @user 
            session[:user_id] = @user.id
        end
    end
end