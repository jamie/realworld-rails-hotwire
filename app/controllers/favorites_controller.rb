class FavoritesController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!

  def create
    @favorite = current_user.favorites.create(post: @post)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @post }
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by(post: @post)
    @favorite&.destroy

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @post }
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
