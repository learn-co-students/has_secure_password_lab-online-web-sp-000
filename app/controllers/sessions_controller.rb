class SessionsController < ApplicationController
  def new
  end

  def create
    
    @user = User.find_by(name: user_params[:name])
    return head(:forbidden) unless @user.authenticate(user_params[:password])
    session[:user_id] = @user.id
    redirect_to '/'

  end

  def destroy
    session.delete :user_id
    redirect_to '/login'
  end

  private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
