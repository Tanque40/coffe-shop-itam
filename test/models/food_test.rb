# == Schema Information
#
# Table name: foods
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  price       :float
#  photo       :string
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
