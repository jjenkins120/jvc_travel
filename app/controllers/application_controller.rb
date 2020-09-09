class ApplicationController < ActionController::Base
    # before_action :authorized
    helper_method :authorized, :current_user, :logged_in?

    def logged_in_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def authorized
        redirect_to "/" unless logged_in_user
    end

    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        end
    end

    def logged_in?
        !!current_user
    end
end
