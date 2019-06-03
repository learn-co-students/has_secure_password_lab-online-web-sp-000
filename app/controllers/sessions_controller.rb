class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: user_params[:name])
    if @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
    end
    
    redirect_to '/'
  end

  def destroy
    session.delete [:name] if sessions[:name]
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
