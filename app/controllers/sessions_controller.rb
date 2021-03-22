class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        
        @user = User.find_by(name: params[:name])
        
        #authenticated = @user.try(:authenticate, user_params[:password])
        #if authenticated
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to '/welcome/show'
        else
            flash[:warning] = 'Invalid Name or Password'
            redirect_to '/login'
        end

    end


    def destroy
        session.delete :user_id
        redirect_to "/login"
    end

    private
  
    def user_params
     params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
