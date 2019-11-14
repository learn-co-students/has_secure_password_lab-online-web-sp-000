class SessionsController < ApplicationController

  def new
  end

  def create
    puts params
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to(users_home_path)
    else
      flash[:alert] = "User/password cannot be authenticated"
      redirect_to(new_session_path)
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to(new_session_path)
  end


end
