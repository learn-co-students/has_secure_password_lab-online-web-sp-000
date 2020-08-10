class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if (session[:name] == nil) || (session[:name].length == 0)
      return nil
    else
      session[:name]
    end      
  end   
end
