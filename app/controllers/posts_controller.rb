class PostsController < ApplicationController

  def index
    @post = Post.order("RANDOM()").first
  end

  def new
    @post = Post.new
  end

end
