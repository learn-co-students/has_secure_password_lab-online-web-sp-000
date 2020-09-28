class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:user][:name])
    if user && user.authenticat(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end
end
