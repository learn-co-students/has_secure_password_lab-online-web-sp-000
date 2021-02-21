class SessionsController < ApplicationController

    def new 
    end
 
    def create 
        @user = User.find_by(name: params[:user][:name])
        if @user.name && @user.authenticate(params[:user][:password])
            session[:user_id] = @user[:id]
            redirect_to welcome_path(@user)
        else
            render :'users/new'
        end
    end
  
    def destroy
        @session = session
        @session.delete :user_id
  
        redirect_to '/'
    end
    
private 
    
    # def authenticate (password)
    #     @user = User.find_by_name(params[:name])
    #     if @user.password && @user.password == params[:password]
    #         return true
    #     else 
    #         return nil 
    #     end
    # end 

  end