class AddYearToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column(:photos, :year, :string)
  end
end
