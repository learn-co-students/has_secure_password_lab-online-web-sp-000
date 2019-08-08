class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
    #binding.pry
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    #binding.pry
    session[:user_id] = @user.id
    #binding.pry
  end
end
