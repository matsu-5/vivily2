class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
