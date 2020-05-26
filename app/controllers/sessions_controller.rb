class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_name!(params[:user][:name])&.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect_to '/'
  rescue StandardError
    redirect_to new_user_path
  end

  def destroy
    session.clear
    redirect_to '/'
  end
  end
