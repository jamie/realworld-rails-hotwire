class FavouritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    current_user.favourites.create(post: @post)
    respond_to do |format|
      format.html { redirect_to @post, notice: 'Post was added to favourites.' }
      format.turbo_stream
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    current_user.favourites.find_by(post: @post)&.destroy
    respond_to do |format|
      format.html { redirect_to @post, notice: 'Post was removed from favourites.' }
      format.turbo_stream
    end
  end
end
