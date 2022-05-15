# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  quantity   :integer
#  deliver    :boolean
#  food_id    :bigint           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord
  belongs_to :food
  belongs_to :user

  # To asign many things
  has_many :foods
  has_many :users

  # Validations

end
