class SessionsController < ApplicationController

  def new
    @user = User.find_by(name: session[:name])
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    render 'home'
  end

  def home

  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
