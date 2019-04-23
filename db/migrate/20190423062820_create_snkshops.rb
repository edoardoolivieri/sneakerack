class CreateSnkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :snkshops do |t|
      t.string :sku
      t.string :name
      t.string :photo_url

      t.timestamps
    end
  end
end
