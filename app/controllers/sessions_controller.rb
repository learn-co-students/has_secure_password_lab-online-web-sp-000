class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by(name: params[:user][:name])
    
    # binding.pry
    
    # if user.authenticate(params[:password])
    if user.try(:authenticate, params[:user][:password])    
      log_in_user(user)
      redirect_to user_path(user)
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to new_user_path
  end

end