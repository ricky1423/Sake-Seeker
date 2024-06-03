class Item < ApplicationRecord

  def self.search(search)
    if search.present?
      Item.where('name LIKE(?) OR name_kana LIKE(?) OR category LIKE(?) OR alcohol LIKE(?) OR teste LIKE(?) OR price LIKE(?) OR prefecture LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Item.all
    end
  end
end
