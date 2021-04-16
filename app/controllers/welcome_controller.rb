class WelcomeController < ApplicationController
  
  def homepage
    @user = User.find_by(id: session[:user_id])
  end

end