class RemovePhotoIdFromPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :photo_id, :string
  end
end
