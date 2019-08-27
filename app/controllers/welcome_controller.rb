class WelcomeController < ApplicationController
  before_action :require_login

  def show
    @name = User.find(session[:user_id]).name
  end

  private

  def require_login
    redirect_to login_path unless session.include?(:user)
  end
end
