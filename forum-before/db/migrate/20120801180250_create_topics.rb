class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :topics, :user_id
  end
end
