class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def log_in?
    !!current_user
  end

  private 
  
  def require_login
    unless log_in?
      flash[:error] ="Please login to view the page"
      redirect_to '/login'
    end
  end
end
