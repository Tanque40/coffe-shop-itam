# == Schema Information
#
# Table name: foods
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  price       :float
#  photo       :string
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
