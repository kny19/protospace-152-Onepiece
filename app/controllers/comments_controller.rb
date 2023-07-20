class CommentsController < ApplicationController
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to root_path
  end
end

private
def tweet_params
  params.require(:tweet).permit(:name, :image, :text)
end

end