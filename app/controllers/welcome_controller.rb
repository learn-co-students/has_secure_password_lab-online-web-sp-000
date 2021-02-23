class WelcomeController < ApplicationController

    def new
        @user = User.find_by(params[:name])
    end

end
