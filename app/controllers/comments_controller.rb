class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new 
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.valid?
      flash[:success] = "Comment added!"
      redirect_to post_path(@comment.post)
    else 
      flash[:my_errors] = @comment.errors.full_messages
      redirect_to new_comment_path
    end 
  end

  def edit
    
  end

  def update
    if @comment.update
      redirect_to comment_path(@comment)
    else 
      flash[:my_errors] = @comment.errors.full_messages
      redirect_to edit_comment_path(@comment)
    end
  end

  def destroy
    @comment.destroy
    redirect_to posts_path
  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:description, :post_id)
  end


end
