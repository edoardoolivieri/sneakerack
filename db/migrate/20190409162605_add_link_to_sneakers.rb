class AddLinkToSneakers < ActiveRecord::Migration[5.2]
  def change
    add_column :sneakers, :link, :string
  end
end
