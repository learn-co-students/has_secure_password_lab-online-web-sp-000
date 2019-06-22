class SessionsController < ApplicationController

  def new
  end

  def create
     user = User.find_by(name: params[:user][:name])
     user = user.try(:authenticate, params[:user][:password])
     return redirect_to(controller: 'users', action: 'new') unless user
     session[:user_id] = user.id
     redirect_to "/"
  end

  def destroy
    session[:user_id].delete
    redirect_to "/"
  end

end
