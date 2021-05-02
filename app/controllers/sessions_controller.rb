class SessionsController < ApplicationController

    def create
        @user = User.find_by(name: params[:user][:name])
        if @user.present?
            return head(:forbidden) unless @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
        end
    end
end
