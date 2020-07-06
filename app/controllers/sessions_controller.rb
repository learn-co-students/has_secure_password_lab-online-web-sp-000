class SessionsController < ApplicationController

    def homepage

    end

    def new

    end

    def create 
        @user = User.find_by(name: params[:user][:name])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to '/'
        # else 
        #     redirect_to '/login'
        # end
    end
    
    def destroy 

    end

end
