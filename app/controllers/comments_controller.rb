class CommentsController < ApplicationController
  def create
  	@post = Post.find(paramas)[:post_id]
  	@comment = @post.comments.build(params[:comment])
  	@comment.save
  
	redirect_to @posts
	end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to @comment
  end
end
