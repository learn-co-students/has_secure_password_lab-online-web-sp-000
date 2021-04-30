class SessionsController < ApplicationController
    
    def new
    end
    
    def create
        name = params[:user][:name]
        user = User.find_by(name: name)
        #raise params.inspect
        password = params[:user][:password]
        if user.valid? && user.authenticate(password)
            session[:user_id] = user.id
        end
    end

end