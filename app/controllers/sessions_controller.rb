class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_or_create_by(name: params[:user][:name])
    return redirect_to new_session_path unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

end
