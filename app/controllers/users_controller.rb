class UsersController < ApplicationController
  def new; end

  def create
    user = User.create!(params_filter)
    session[:user_id] = user.id
    redirect_to '/'
  rescue StandardError
    # binding.pry
    redirect_to new_user_path
  end

  def params_filter
    params.require(:user).permit!
  end
end
