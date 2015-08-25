class PostsController < ApplicationController

  def index
    @post = Post.order("RANDOM()").first
  end

end
