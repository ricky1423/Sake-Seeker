class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true

      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :category, null: false
      t.string :alcohol, null: false
      t.string :sake_level, null: false
      t.string :teste, null: false
      t.string :price, null: false
      t.text :explain, null:false
      t.text :image, null: false
      t.string :prefecture, null: false

    end
  end
end
