# == Schema Information
#
# Table name: toys
#
#  id           :bigint           not null, primary key
#  name         :string           not null
#  toyable_id   :integer
#  toyable_type :string
#

require 'test_helper'

class ToyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
