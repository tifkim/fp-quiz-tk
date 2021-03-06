class PostsController < ApplicationController

  def index
    @post = Post.order("RANDOM()").first
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.invalid?
      flash[:error] = 'Entry was invalid.'
    end
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:thoughts)
  end

end
