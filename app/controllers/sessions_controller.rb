class SessionsController < ApplicationController

  def login
  end

  def create
    # raise params.inspect
    # @user = User.find_by(name: params[:name])
    # redirect_to '/login' unless @user.authenticate(params[:password])
    # session[:user_id] = @user.id


    @user = User.find_by(name: params[:name])
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to '/welcome'
      else
        redirect_to '/login'
      end
    else
      redirect_to '/login'
    end

    # User.find_by(name: 'david')&.authenticate('notright')
    # @user = User.find_by(name: params[:name])&.authenticate(params[:password])

    # if @user
    #   # session[:user_id]).to eq(connie.id)
    #   session[:user_id] = @user.id
    #   redirect_to '/welcome'
    # else
    #   redirect_to '/login'
    # end
  end
end
