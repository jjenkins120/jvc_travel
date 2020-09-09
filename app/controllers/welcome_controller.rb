class WelcomeController < ApplicationController
    skip_before_action :authorized, only: [:show, :login]
    
    def show
    end

    def login 
        user = User.find_by(username: params[:session][:username])
        #byebug
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:success] = "WELCOME BACK TRAVELER!"
          redirect_to user_path(user)
        else 
          flash[:error] = "Username or Password is Incorrect"
          redirect_to "/"
        end 
    end 

    def logout
        session.delete(:user_id)
        redirect_to "/"
    end

end