class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def show
    @post
  end

  def new
    @post = Post.new()
    @current_user = User.third
    @trip_names = @post.current_user_trips_cities(@current_user)
    byebug
  end

  def create
    byebug
    @current_user = User.third
    @post = Post.create(post_params(:title, :description, :destination, :trip_id))
    byebug
    if @post.save
      flash[:post] = "Your post has been added!!!"
      @current_user.posts << @post
      byebug
      redirect_to user_path(@post.user_id)
    else 
      flash[:errors] = @post.errors.full_messages
      redirect_to new_post_path(@current_user)
    end

  end
  
  def edit
      #buttons to edit and delete post should only be shown if the user logged in is related to the post
  end



  def update
    @post = Post.find(params[:id])
    if @post.update(post_params(:title, :description, :destination))
        redirect_to post_path(@post)
    else 
        flash[:errors] = @post.errors.full_messages
        redirect_to edit_post_path(@post)
    end
  end


  #foreign key constraint error again when destroying!!!!
   
  def destroy
    @post =  Post.find(params[:id])
    user_id = @post.user.id
    @post.destroy
    flash[:destroy] = "The post has been deleted!!!"
    byebug
    redirect_to posts_path
  end

  private

  def find_post
    byebug
    @post = Post.find(params[:id])
  end
    
  def post_params(*args)
    params[:post][:user_id] = User.last.id
    params.require(:post).permit(*args)
  end
 
end
