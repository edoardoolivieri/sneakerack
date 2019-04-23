class AddDescriptionPriceToSnkshops < ActiveRecord::Migration[5.2]
  def change
    add_column :snkshops, :description, :string
    add_column :snkshops, :size, :integer
  end
end
