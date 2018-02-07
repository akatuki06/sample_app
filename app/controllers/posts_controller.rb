class PostsController < ApplicationController
  def new
  	 @post = Post.new
  end

  def create
  	  post = Post.new(post_params)
  	  post.save
  	  redirect_to '/posts/new'
  end
  def index
  end
  def index
  	@posts = Post.all
  end


  private

  def post_params
  	  params.require(:post).permit(:title, :body, :category)
  	end
end
