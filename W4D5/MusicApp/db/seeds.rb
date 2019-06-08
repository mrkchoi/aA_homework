# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




ActiveRecord::Base.transaction do
  Track.destroy_all
  Album.destroy_all
  Band.destroy_all
  User.destroy_all

  ################################### 
  # CREATE USERS
  ################################### 


  User.create(email: "mrkchoi@gmail.com", password: 'password')
  User.create(email: "david@gmail.com", password: 'password')
  User.create(email: "kenny@gmail.com", password: 'password')
  User.create(email: "jimmy@gmail.com", password: 'password')
  User.create(email: "joe@gmail.com", password: 'password')


  ################################### 
  # CREATE BANDS
  ################################### 
  20.times do
    Band.create(name: Faker::Music.band)
  end


  ################################### 
  # CREATE ALBUMS
  ################################### 
  num_bands = Band.all.count - 1

  100.times do
    Album.create(title: Faker::Music.album, year: Faker::Number.between(1955, 2019), studio_album: ['t','f'].sample, band_id: (0..num_bands).to_a.sample)
  end

  ################################### 
  # CREATE TRACKS
  ################################### 
  num_albums = Album.all.count

  (0...num_albums).each do |album_idx|
    (0..12).each do |track_num|
      Track.create(
        title: Faker::Hipster.word.capitalize, 
        album_id: Album.all[album_idx].id, 
        lyrics: Faker::Quote.famous_last_words, 
        track_type: ["Regular", "Bonus"].sample, 
        ord: track_num + 1
      )
    end
  end

end