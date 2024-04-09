class ArticlesController < ApplicationController
  def show
    #This is an instance variable, needed so it can be called from the view
    @article = Article.find(params[:id])
  end
  def index
    @articles = Article.all
  end
end
