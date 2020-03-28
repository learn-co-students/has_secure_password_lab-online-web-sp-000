class SessionsController < ApplicationController
    def new
    end

    def create 
        #   logs you in with the correct password
        #   rejects invalid passwords
        #   rejects empty passwords
        @user = User.find_by(name: params[:user][:name])
        #@user = @user.try(:authenticate, params[:user][:password])
        # try is an ActiveSupport method. object.try(:some_method) means if object != nil then object.some_method else nil end.
        return redirect_to(controller: 'sessions', action: 'new') unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        #@user = user
        redirect_to controller: 'welcome', action: 'home'
    end
   

    def destroy
        session.delete :user_id
        
        redirect_to '/'
    end
end