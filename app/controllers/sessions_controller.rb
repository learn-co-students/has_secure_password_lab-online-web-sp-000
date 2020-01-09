class SessionsController < ApplicationController
    def create
        @user = User.find_by(name: params[:user][:name])
        if @user
            if @user.authenticate(params[:user][:password])
                session[:name] = @user.name
                session[:user_id] = @user.id
                redirect_to "/users/#{@user.id}"
            else
                redirect_to "/"
            end
        else
            redirect_to "/"
        end
    end
end
