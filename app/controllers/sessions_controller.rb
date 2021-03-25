class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: user_params[:name])

    return head(:forbidden) unless @user.authenticate(user_params[:password])
    login @user
  end

  def destroy
    session.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

  def login(user)
    session[:user_id] = user.id
  end

end
