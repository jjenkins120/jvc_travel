class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  #skip_before_action :authorized, only: [:new, :create]

  def index
    @users = User.all 
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      flash[:success] = "WELCOME TRAVELLER!"
      redirect_to user_path(@user)
    else 
      flash[:my_errors] = @user.errors.full_messages
      redirect_to new_user_path
    end 
  end

  def edit
  end

  def update
    if @user.update
      redirect_to user_path(@user)
    else 
      flash[:my_errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :age, :favorite_destination, :password, :password_confirmation, :username, :email, :profile_img_url)
  end

end
