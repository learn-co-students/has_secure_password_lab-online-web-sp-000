class WelcomeController < ApplicationController
    protect_from_forgery

    def home
        if !logged_in?
            redirect_to '/login'
        else
            render 'home'
        end
    end
end