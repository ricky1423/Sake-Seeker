class LikesController < ApplicationController

  before_action :set_item, only: [:create, :destroy]

  def create
    like = current_user.likes.build(item_id: params[:item_id])
    like.save
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.update("favorite", partial: 'likes/like', locals: { item: @item })
      end
    end
  end

  def destroy
    like = Like.find_by(item_id: params[:item_id], user_id: current_user.id)
    like.destroy
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.update("favorite", partial: 'likes/like', locals: { item: @item })
      end
    end
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end
