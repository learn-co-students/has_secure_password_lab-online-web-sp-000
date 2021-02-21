class SessionsController < ApplicationController

    def new 
    end

    def create 
        @session = session
        @user = User.find_by(name: params[:name])
        return head(:forbidden) unless @user.authenticate(params[:password])
        @session[:user_id] = @user.id
        redirect_to 'welcome#home'
    end
  
    def destroy
        @session = session
        @session.delete :user_id
  
        redirect_to '/'
    end
    
    private 
    
    def authenticate (password)
        @user = User.find_by_name(params[:name])
        if @user.password && @user.password == params[:password]
                return true
        else 
            return nil 
        end
    end 

  end