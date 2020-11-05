class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new
        @user.name = params[:user][:name]
        @user.password = params[:user][:password]
        @user.save
        session[:user_id] = @user.id
        if @user.password != @user.password_confirmation
            redirect_to '/users/new'
        end
    end
end
