class SessionsController < ApplicationController
    
    def new
    end

    def create
        #authenticate password
        user = User.find_by(name: params[:user][:name])
        authenticated = user.try(:authenticate, params[:user][:password])
         return redirect_to new_session_path unless authenticated
         session[:user_id] = user.id

    end

    def destroy
        if session[:user_id] & !session[:user_id].empty?
            session.delete :user_id
        end
    end


end
