class ApplicationController < ActionController::Base
  helper_method :current_user
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end


end	
