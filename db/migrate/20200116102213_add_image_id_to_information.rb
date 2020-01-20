class AddImageIdToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :image_id, :string
  end
end
