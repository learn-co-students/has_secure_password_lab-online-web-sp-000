class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(name: params[:user][:name])
        # binding.pry
        authenticated = user.try(:authenticate, params[:user][:password])
        # return head(:forbidden) unless authenticated

        if authenticated
            @user = user
            session[:user_id] = @user.id
            #  binding.pry
        else
            redirect_to(controller: 'users', action: 'new')
        end
    end

end
