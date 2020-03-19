class UsersController < ApplicationController
  #accepts_nested_attributes

  def create
    #binding.pry
    #User.create(user_params)
  end

  def new
  end

  def welcome
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
