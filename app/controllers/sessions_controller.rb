class SessionsController < ApplicationController
    def create
      @user = User.find_by(name: params[:user][:name])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to welcome_path(@user)
      else
        redirect_to '/login'
      end
    end
    def new
    end
    def destroy
        session.delete :name
        redirect_to '/login'
    end

    def require_login
        return head(:forbidden) unless session.include? :name
    end
  end