class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:id, :content, :post_id)
  end
end 
