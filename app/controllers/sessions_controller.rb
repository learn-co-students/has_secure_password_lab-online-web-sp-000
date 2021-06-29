class SessionsController <  ApplicationController
    def new
    end
    def create
        user = User.find_or_create_by(name: params[:user][:name])
        user = user.try(:authenticate, params[:user][:password])
        if !user
            return redirect_to(controller: 'sessions', action: 'new')
        end
        session[:user_id] = user.id
        @user = user
        redirect_to controller: 'users', action: 'home'
    end
    def destroy
        session.delete :user_id
        redirect_to '/'
    end
  end
  