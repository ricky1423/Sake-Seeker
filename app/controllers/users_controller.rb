class UsersController < ApplicationController

  before_action :authenticate_user!, only: :show
  before_action :set_user, only: [:show, :links]

  def show
    @nickname = current_user.nickname
    likes
  end

  def likes
    likes = Like.where(user_id: @user.id).pluck(:item_id)
    @like_items = Item.find(likes)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
