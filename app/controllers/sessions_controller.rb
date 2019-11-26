class SessionsController < ApplicationController

    def new
        @user = User.new
    end


    def create
        #binding.pry
       @user = User.find_by(:name => params[:user][:name])
        if @user.try(:authenticate, params[:user][:password])
            session[:user_id] = @user.id
        end

       
    end



end 
