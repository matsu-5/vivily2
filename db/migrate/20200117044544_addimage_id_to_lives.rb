class AddimageIdToLives < ActiveRecord::Migration[5.2]
  def change
  	add_column :lives, :image_id, :string
  end
end
