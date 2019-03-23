class CreateSneakers < ActiveRecord::Migration[5.2]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.string :brand
      t.text :description
      t.integer :price_per_sneaker
      t.integer :size

      t.timestamps
    end
  end
end
