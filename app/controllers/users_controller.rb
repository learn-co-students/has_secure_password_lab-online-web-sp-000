class UsersController < ApplicationController

    def create
        @user = User.create(name: params[:user][:name], password: params[:user][:password])
        session[:user_id] = @user.id
        if @user.password != params[:user][:password_confirmation]
            redirect_to(controller: 'users', action: 'new')
        end 
    end 

end
