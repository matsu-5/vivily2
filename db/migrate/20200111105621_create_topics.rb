class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title
      t.string :details
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
