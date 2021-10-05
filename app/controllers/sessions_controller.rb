class SessionsController < ApplicationController
  def new
  end

  def create
    #within the sessions controller, the server recieves a login request, here we are making sure that a user with the user[:name] exists
    user = User.find_by(name: params[:user][:name])
    #here we are checking the user and their password match the system's
    user = user.try(:authenticate, params[:user][:password])
    #if it does not match, redirect to creat a new user
    return redirect_to(controller: 'sessions', action: 'new') unless user
    #if the user info matches, set the session to the user's id
    session[:user_id] = user.id
    #make the user variable available in the welcome controllers home page 
    @user = user

    redirect_to controller: 'welcome', action: 'home'
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
