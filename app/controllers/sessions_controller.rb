class SessionsController < ApplicationController
    protect_from_forgery

    def new
        user = User.new
    end

    def create
        user = User.find_by(name: params[:user][:name])
        user = user.try(:authenticate, params[:user][:password])
        if user
            session[:user_id] = user.id
            redirect_to '/home'
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :user_id

        redirect_to '/'
    end

end