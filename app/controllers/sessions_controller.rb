class SessionsController < ApplicationController
  def new
  end
=begin

def create
  user = User.find_by(name: params[:user][:name])
  user = user.try(:authenticate, params[:user][:password])
  return redirect_to(controller: 'sessions', action: 'new') unless user
  session[:user_id] = user.id
  @user = user
  redirect_to controller: 'welcome', action: 'home'

end
=end
  def create
    @user = User.find_by(name: params[:user][:name])
    return redirect_to(controller: 'sessions', action: 'new') unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id


  end
end
