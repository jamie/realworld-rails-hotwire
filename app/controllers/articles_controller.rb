# frozen_string_literal: true
class ArticlesController < ApplicationController
  def index
    @articles = if params[:tag]
      Article.tagged_with(names: params[:tag])
    else
      Article.all
    end
    @top_tags = Gutentag::Tag.order("taggings_count desc, name asc").limit(10)
  end

  def show
    @article = Article.find(params[:id])
    @article.oops / 0
    @comments = @article.comments.with_rich_text_content
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
