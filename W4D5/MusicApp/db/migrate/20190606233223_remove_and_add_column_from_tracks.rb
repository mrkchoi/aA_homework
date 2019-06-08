class RemoveAndAddColumnFromTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tracks, :track_number
    add_column :tracks, :ord, :integer, null: false
  end
end
