class UsersController < ApplicationController

    def new
        @new_user = User.new
    end
        
    def create
        @new_user = User.create(params[:user][:name], params[:user][:password])
    end

    
end
