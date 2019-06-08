class ChangeColTypeBandidAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :band_id
    add_column :albums, :band_id, :integer, null: false

    add_index :albums, :band_id
  end
end
