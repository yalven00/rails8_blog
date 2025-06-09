class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post.comments.create!(comment_params) # Use strong parameters
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id]) # Ensure the correct post is loaded
  end

  def comment_params
    params.require(:comment).permit(:content) # Strong parameter filtering
  end
end