class SessionsController < ApplicationController

  def destroy
      session.delete(:user_id)
      redirect_to(new_session_path)
    end



    def new
      @user = User.new
    end

    def create
      # puts params
      @user = User.find_by(name: params[:user][:name])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to(users_home_path)
      else
        redirect_to(new_session_path)
      end
    end


end
