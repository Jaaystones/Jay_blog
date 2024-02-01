class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "Jaystones", password: "Jogolo12345", except: [:index, :show]


  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    if @article
      # Article found, continue with normal flow
    else
      # Article not found, handle the case (e.g., redirect to index page)
      redirect_to articles_path, alert: 'Article not found.'
    end
  end

# create a new article
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      Rails.logger.info(@article.errors.inspect)
      render :new, status: :unprocessable_entity
    end
  end

# edit and update a new article.
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

# delete an article
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end
end

