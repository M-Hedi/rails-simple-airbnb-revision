class AddPictureUrlToFlats < ActiveRecord::Migration[8.0]
  def change
    add_column :flats, :picture_url, :string
  end
end
