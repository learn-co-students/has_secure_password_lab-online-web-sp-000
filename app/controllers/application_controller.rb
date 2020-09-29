class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id])
  end

  # requires passing in user object
  def log_in_user(user)
    session[:user_id] = user.id
  end
end
