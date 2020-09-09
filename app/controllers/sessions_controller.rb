class SessionsController < ApplicationController
    #skip_before_action :authorized, only: [:new, :login]
    
    def new      
    end

    def login 
        user = User.find_by(username: params[:session][:username])
    
        if user && User.authenticate(params[:session][:password])
          session[:user_id] = user.id
          redirect_to user_path(user)
        else 
          flash[:error] = "Username or Password is Incorrect"
          redirect_to new_login_path
        end 
    end 

    def logout
        session.delete(:user.id)
        redirects_to users_path
    end

end