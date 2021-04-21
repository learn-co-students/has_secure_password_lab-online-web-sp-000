class WelcomeController < ApplicationController

    def hello
        redirect_to controller: 'users', action: 'new' unless session[:user_id] 
    end
end
