class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)
    redirect_to '/'
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to root_path
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    redirect_to root_path
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:user, :image, :text)
  end

end