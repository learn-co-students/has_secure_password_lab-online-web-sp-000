class SessionsController < ApplicationController
  def create
    # byebug
    # user = User.find_by(name: params[:name])
    # authenticated = user.try(:authenticate, params[:password])
    # return head(:forbidden) unless authenticated
    # @user = user  
    # session[:user_id] = @user.id 
    # byebug
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.try(:authenticate, params[:user][:password])
    session[:user_id] = @user.id 
  end

end
