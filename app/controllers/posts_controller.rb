class PostsController < ApplicationController 
  before_action :set_post, only: [:show]

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/latest
  def latest 
    @posts = Post.all
  end

  # GET /posts/1
  def show
  end

  # POST /admin/posts
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render action: 'new'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end
   
    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:headline, :content, :author)
    end
end
