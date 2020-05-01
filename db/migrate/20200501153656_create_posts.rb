class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :comment_id
      t.integer :plant_id
      t.integer :photo_id
      t.integer :likes
      t.timestamps
    end
  end
end