class AddPhotoToSneakers < ActiveRecord::Migration[5.2]
  def change
    add_column :sneakers, :photo, :string
  end
end
