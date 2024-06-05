class Item < ApplicationRecord

  belongs_to :user
  has_many :likes

  def self.search(search)
    if search.present?
      Item.where('name LIKE(?) OR name_kana LIKE(?) OR category LIKE(?) OR alcohol LIKE(?) OR teste LIKE(?) OR price LIKE(?) OR prefecture LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Item.all
    end
  end

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end
