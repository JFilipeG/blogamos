class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    @post = Post.find(params[:post_id])
    comment = @post.comments.new(comment_params)
    if comment.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment.post
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to post_url @comment.post
  end

  def edit
  end

  def new
    @comment = Comment.new
  end

  private

  def set_post
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:text, :author)
  end
end
