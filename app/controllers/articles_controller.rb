# frozen_string_literal: true
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create!(
      params.require(:article).permit(
        :title,
        :description,
        :content,
        :tag_list,
      )
    )
    redirect_to(article)
  end
end
