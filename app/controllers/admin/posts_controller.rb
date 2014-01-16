class Admin::PostsController < Admin::Cms::BaseController 
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate, only: [:show]
  skip_before_action :load_admin_site, only: [:show]
  skip_before_action :set_locale, only: [:show]
  skip_before_action :load_fixtures, only: [:show]

  #layout 'cms_admin', :except => :show
  
  # GET /admin/posts
  def index
    @posts = Post.all
  end

  # GET /admin/posts/latest
  def latest 
    @posts = Post.all
  end

  # GET /admin/posts/1
  def show
  end

  # GET /admin/posts/new
  def new
    @post = Post.new
  end

  # GET /admin/posts/1/edit
  def edit
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

  # PATCH/PUT /admin/posts/1
  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /admin/posts/1
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
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
