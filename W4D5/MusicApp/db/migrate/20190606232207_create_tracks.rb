class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :track_number, null: false
      t.integer :album_id, null: false
      t.text :lyrics

      t.timestamps
    end

    add_index :tracks, :album_id
  end
end


# A Track should:

# Belong to an album (make sure to also add associations to Band and Album)
# Have a title, ord (track number) and optional lyrics
# Designate whether it is a regular or bonus track
# Have the following routes. Once again, please make sure the routes you make look exactly like the ones below:
# new_album_track GET    /albums/:album_id/tracks/new(.:format) tracks#new
#          tracks POST   /tracks(.:format)                      tracks#create
#      edit_track GET    /tracks/:id/edit(.:format)             tracks#edit
#           track GET    /tracks/:id(.:format)                  tracks#show
#                 PATCH  /tracks/:id(.:format)                  tracks#update
#                 PUT    /tracks/:id(.:format)                  tracks#update
#                 DELETE /tracks/:id(.:format)                  tracks#destroy