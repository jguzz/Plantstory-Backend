class AddPostIdToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :post_id, :integer
  end
end
