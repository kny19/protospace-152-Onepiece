class CommentsController < ApplicationController
  def edit
    @comment = comment.find(params[:id])
  end
end
