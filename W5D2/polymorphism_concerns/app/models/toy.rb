# == Schema Information
#
# Table name: toys
#
#  id           :bigint           not null, primary key
#  name         :string           not null
#  toyable_id   :integer
#  toyable_type :string
#

class Toy < ApplicationRecord
  validates :name, uniqueness: { scope: [:toyable] }
  belongs_to :toyable, polymorphic: true

  
end
