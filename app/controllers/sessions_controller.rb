require 'pry'
class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params.require(:user)[:name])
    return head(:forbidden) unless @user.authenticate(params.require(:user)[:password])
    session[:user_id] = @user.id
  end

end
