class SessionsController < ApplicationController
    def create
        @user = User.find_by(name: params[:user][:name])
        return redirect_to new_user_path unless @user.try(:authenticate, params[:user][:password])
        session[:user_id] = @user.id

        redirect_to users_path
    end

    def destroy
        session.delete :user_id

        redirect_to '/'
    end
end
