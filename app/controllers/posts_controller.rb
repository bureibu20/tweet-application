class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
      @post = Post.new
  end
  def create
    @post =Post.create(post_params)
    if @post.save
      redirect_to new_post_path, notice: "気持ちをTweetしました！"
    else
      render :new
    end
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  private
  def post_params
    params.require(:post).permit(:name, :content)
  end
end