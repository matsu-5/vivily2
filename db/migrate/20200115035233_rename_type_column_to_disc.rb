class RenameTypeColumnToDisc < ActiveRecord::Migration[5.2]
  def change
  	rename_column :discs, :type, :category
  end
end
