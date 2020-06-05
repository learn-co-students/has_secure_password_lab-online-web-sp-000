class UsersController < ApplicationController
  
  def index
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      redirect_to new_user_path
    end
  end


end
