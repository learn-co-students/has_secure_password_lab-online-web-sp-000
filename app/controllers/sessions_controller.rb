class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end
 
    def create
    # binding.pry
        # if params[:user].nil? or params[:user]==""
        #   redirect_to '/login'
        # else
        #   user = User.find_by(name: params["user"]["name"])
        #   session[:user_id] = user.id
        # #   binding.pry
        #   redirect_to '/'
        # end
    @user = User.find_by(name: params[:user][:name])
    # binding.pry
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    end

    def destroy
      session.delete :name
    end
end