class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.find_by(name: params[:user][:name])#.try(:authenticate, params["user"]["password"])
    
    # return head(:forbidden) unless @user.authenticate(params[:password])
    # @user = User.find_by(name: params[:user][:username])
    if @user == nil
      render :new
    else
      return head(:forbidden) unless @user.authenticate(params[:user][:password])
      # @user.save
      session[:user_id] = @user.id
      redirect_to welcome_homepage_path(@user)
    end
    # return head(:forbidden) unless @user.authenticate(params[:password])
  end

  def destroy
    session.delete :user_id
  end
end