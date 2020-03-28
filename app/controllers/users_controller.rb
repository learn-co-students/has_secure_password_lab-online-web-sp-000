class UsersController < ApplicationController
    def new
    end
  
    def create
        #creates a new user
        #logs you in
        #sets your password if the confirmation matches
        #redirects you if your password and confirmation don't match
      @user = User.new(user_params)
      return redirect_to controller: 'users', action: 'new' unless @user.save
      session[:user_id] = @user.id
      redirect_to controller: 'welcome', action: 'home'
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end