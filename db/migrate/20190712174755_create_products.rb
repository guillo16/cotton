class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :photo2
      t.string :photo3
      t.string :sku
      t.string :category
      t.string :brand

      t.timestamps
    end
  end
end
