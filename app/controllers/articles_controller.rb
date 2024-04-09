class ArticlesController < ApplicationController
  def show
    #This is an instance variable, needed so it can be called from the view
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    # Both ways work
    # redirect_to article_path(@article)
    redirect_to @article
  end
end
