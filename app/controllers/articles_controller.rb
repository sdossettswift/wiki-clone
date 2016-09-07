class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private
  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
