class UsersController < ApplicationController

  def new
    render :signup
  end

  def create
    if user_params[:password] == user_params[:password_confirmation]
      user = User.create(user_params)
      login(user)
    else
      redirect_to new_user_path
    end
  end


end
