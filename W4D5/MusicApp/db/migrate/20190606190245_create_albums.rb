class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :band_id, null: false
      t.string :title, null: false
      t.integer :year, null: false
      t.string :studio_album, null: false, default: true
      t.timestamps
    end

    add_index :albums, :band_id
  end
end


# An Album should:

# Not be called Record, as ActiveRecord uses record_id internally.
# Belong to a band (don't forget to add the association to Band also)
# Have a title, year
# Designate whether it is a live or studio album
# HINT: use a boolean paired with a reasonable default value