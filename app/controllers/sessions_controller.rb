class SessionsController < ApplicationController
  def new

  end
  
  def create
    #binding.pry
    @user=User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to @user, notice: "Logged in!"
    else
      flash.now[:alert] = "Invalid login!"
      render "new"
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
