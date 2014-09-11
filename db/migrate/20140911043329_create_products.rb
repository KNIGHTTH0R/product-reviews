class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2
      t.string :category

      t.timestamps
    end
  end
end
