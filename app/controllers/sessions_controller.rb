class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:user][:name])
    unless user.try(:authenticate, params[:user][:password])
      return redirect_to login_path
    end
    session[:user_id] = user.id
    redirect_to homepage_path
  end

  def destroy

  end
end
