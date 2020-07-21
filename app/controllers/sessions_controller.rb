class SessionsController < ApplicationController 

    def create  
      @user = User.find_by(name: params[:user][:name])
      if @user.try(:authenticate, params[:user][:password]) 
        return redirect_to(controller: 'sessions', action: 'new') unless @user
        session[:user_id] = @user.id  
      else
        redirect_to controller: 'welcome', action: 'home'
      end
    end

end

