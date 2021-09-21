# frozen_string_literal: true
class CommentsController < ApplicationController
  def create
    comment = Comment.create!(
      params.require(:comment).permit(:content, :article_id)
    )
    redirect_to(comment.article)
  end
end
