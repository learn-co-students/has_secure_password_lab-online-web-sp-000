class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # part of school solution i didn't have
  # before_action :current_user

  def current_user
    # my solution
    User.find(session[:user_id])

    # school solution
    # @user = (User.find_by(id: session[:user_id]) || User.new)
  end

  # requires passing in user object
  def log_in_user(user)
    session[:user_id] = user.id
  end
end
