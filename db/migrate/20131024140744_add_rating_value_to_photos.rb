class AddRatingValueToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :rating_value, :integer
  end
end
