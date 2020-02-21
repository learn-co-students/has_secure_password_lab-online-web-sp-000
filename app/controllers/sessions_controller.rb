class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:user][:name] && params[:user][:name] != ""
      if session[:user_id] then
        redirect_to '/'
      else
        @user = User.find_by(params[:name])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id        
        redirect_to '/'
      end   
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
  end
  
end
