class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(name: params[:user][:name])
        if user 
            if user.authenticate(params[:user][:password])
               session[:user_id] = user.id
               redirect_to home_path
            else
                flash[:error] = "password incorrect, please try again"
                redirect_to controller: 'sessions', action: 'new'
            end
        else
            flash[:error] = "User doesnt exist, Please signup"
            redirect_to controller: 'sessions', action: 'new'

        end

    end

    def destroy
        reset_session
        redirect_to login_path
    end
end
