require 'pry'
class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to :welcome
        else
            flash[:notice] = "Login is incorrect"
            redirect_to :login
        end
    end 
end
 