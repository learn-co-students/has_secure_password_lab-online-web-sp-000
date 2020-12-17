class SessionsController < ApplicationController
  def new
  end

  def create
    # @user = User.find_by(name: params[:name])
    if params[:password].blank?
      redirect_to '/login'
    else 
      session[:user_id] = user.id
      redirect_to '/'
    end
  end
end
