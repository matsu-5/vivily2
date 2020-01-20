class AddimageIdToTopics < ActiveRecord::Migration[5.2]
  def change
  	add_column :topics, :image_id, :string
  end
end
