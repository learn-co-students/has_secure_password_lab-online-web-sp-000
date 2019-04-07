class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:name])
     session[:user_id] = params[:user_id]
     redirect_to '/users/welcome'
    else
      redirect_to '/login'
   end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
