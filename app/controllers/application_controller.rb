class ApplicationController < ActionController::Base
    before_action :authorized

    def logged_in_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def authorized
        redirect_to new_login_path unless logged_in_user
    end


end
