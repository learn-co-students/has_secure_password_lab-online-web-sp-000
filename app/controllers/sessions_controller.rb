class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create
    puts params
    if !session[:name].blank?
      redirect_to '/'
    elsif !params[:user][:name].blank?
      @user = User.find_by(name: params[:user][:name])
      if @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to '/'
      else
        redirect_to '/users/new'
      end
    else
      redirect_to '/login'
    end

  end
  def destroy
    if !session[:name].blank?
      session.delete :name
    end
  end


end
