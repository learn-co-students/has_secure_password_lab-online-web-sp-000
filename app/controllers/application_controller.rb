class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
  end

  def logged_in?
    current_user.id != nil
  end
  #login logic seems to flow from here, this will check if the user is logged_in? by checking that the current user is not nil or that the session[:user_id] has been set within the current_user method
  def require_login
   redirect_to controller: 'sessions', action: 'new' unless logged_in?
  end
end
