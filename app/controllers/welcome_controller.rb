class WelcomeController < ApplicationController
   def home 
      @user = User.find_by(name: params[:user][:name])
      "Welcome #{@user.name}"
   end 
end
