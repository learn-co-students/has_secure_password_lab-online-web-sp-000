class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.last
    if @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
    else
      return head(:forbidden)
    end
  end

  def destroy
  end

private

def session_params
  params.require(:user).permit(:name, :password)
end

end
