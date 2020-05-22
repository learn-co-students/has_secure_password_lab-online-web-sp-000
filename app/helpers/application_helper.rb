module ApplicationHelper
    def current_user_name 
        User.find(session[:user_id]).name
    end
end
