class CommentsController < ApplicationController
  def edit
    @comment = comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    redirect_to root_path
  end

  private

  def tweet_params
    params.require(:comment).permit(:name, :image, :text)
  end
end

