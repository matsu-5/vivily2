class RemoveCategoryFromDiscs < ActiveRecord::Migration[5.2]
  def change
    remove_column :discs, :category, :string
  end
end
