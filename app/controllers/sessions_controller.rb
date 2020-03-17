class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) if @user.nil? || !@user.authenticate(params[:user][:password])
    #binding.pry
    session[:user_id] = @user.id
  end
end
