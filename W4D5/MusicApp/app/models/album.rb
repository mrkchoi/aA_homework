# == Schema Information
#
# Table name: albums
#
#  id           :bigint           not null, primary key
#  title        :string           not null
#  year         :integer          not null
#  studio_album :string           default("t"), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  band_id      :integer          not null
#

class Album < ApplicationRecord
  validates :band_id, :title, :year, :studio_album, presence: true

  belongs_to :band,
    foreign_key: :band_id,
    class_name: :Band

  has_many :tracks,
    foreign_key: :album_id,
    class_name: :Track

  
end
