class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :image_id
      t.string :name
      t.string :listening
      t.text :comment
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
