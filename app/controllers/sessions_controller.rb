class SessionsController < ApplicationController

    def new

    end

    def create
        @user = User.find_by(name: session_params[:name])
        
        if !@user.authenticate(session_params[:password])
            flash[:notice] = "Wrong password!" 
            return redirect_to '/login'
        end
        
        session[:user_id] = @user.id 
        redirect_to '/'
    end

    private
    def session_params
        params.require(:user).permit(:name, :password)
    end

end