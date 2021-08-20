class ArticlesController < ApplicationController
  def show
    #Article instance variable
    @article = Article.find(params[:id])
  end
end