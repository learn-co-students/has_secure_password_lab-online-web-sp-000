class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def show
    if current_user_id
      @user = User.find(current_user_id)
    else
      redirect_to '/login'
    end
  end

  def current_user_id
    session[:user_id] ||= nil
  end
end
