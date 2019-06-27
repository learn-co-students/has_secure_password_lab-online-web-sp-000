class SessionsController < ApplicationController

    def new
    end

    def create
        @user ||= User.find_by(name: params[:user][:name])
        # binding.pry
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        # binding.pry
        session[:user_id] = @user.id
    end
end
