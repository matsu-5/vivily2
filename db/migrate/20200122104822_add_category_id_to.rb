class AddCategoryIdTo < ActiveRecord::Migration[5.2]
  def change
  	add_column :discs, :category_id, :integer
  end
end
