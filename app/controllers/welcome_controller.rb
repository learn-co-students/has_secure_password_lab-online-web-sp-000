class WelcomeController < ApplicationController
  def home
    @user = User.find_by_id(session[:user_id])
    if !@user
      redirect_to(controller: 'sessions', action: 'new')
    end
  end
end
