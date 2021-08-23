class ArticlesController < ApplicationController
  def show
    #Article instance variable
    @article = Article.find(params[:id])
  end

  def index
    #Article instance variable
    @articles = Article.all
  end
end