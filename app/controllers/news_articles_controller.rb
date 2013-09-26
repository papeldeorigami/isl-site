class NewsArticlesController < CmsAdmin::BaseController 
  before_action :set_news_article, only: [:show, :edit, :update, :destroy]

  # GET /news_articles
  def index
    @news_articles = NewsArticle.all
  end

  # GET /news_articles/_latest_news
  def _latest_news
    @news_articles = NewsArticle.all
  end

  # GET /news_articles/1
  def show
  end

  # GET /news_articles/new
  def new
    @news_article = NewsArticle.new
  end

  # GET /news_articles/1/edit
  def edit
  end

  # POST /news_articles
  def create
    @news_article = NewsArticle.new(news_article_params)

    if @news_article.save
      redirect_to @news_article, notice: 'News article was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /news_articles/1
  def update
    if @news_article.update(news_article_params)
      redirect_to @news_article, notice: 'News article was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /news_articles/1
  def destroy
    @news_article.destroy
    redirect_to news_articles_url, notice: 'News article was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_article
      @news_article = NewsArticle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_article_params
      params.require(:news_article).permit(:headline, :content, :author)
    end
end
