class SessionsController < ApplicationController

  def new
  end

  def create

  end

  def destroy
    reset_session
    redirect_to login_path
  end
end
