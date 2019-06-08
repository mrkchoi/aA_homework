# == Schema Information
#
# Table name: tracks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  album_id   :integer          not null
#  lyrics     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  track_type :string           default("Regular"), not null
#  ord        :integer          not null
#

class Track < ApplicationRecord
  validates :title, :ord, :album_id, :track_type, presence: true

  belongs_to :album,
    foreign_key: :album_id,
    class_name: :Album

end
