class CreateDiscs < ActiveRecord::Migration[5.2]
  def change
    create_table :discs do |t|
      t.string :image_id
      t.string :name
      t.string :type
      t.integer :price
      t.string :release_date
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
