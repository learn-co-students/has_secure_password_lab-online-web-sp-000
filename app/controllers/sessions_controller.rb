class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:username] = @user.id  
  end

  def destroy
    session.delete :userame
  end
end
