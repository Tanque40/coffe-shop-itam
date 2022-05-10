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
class Food < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, :description, :photo, :price, presence: true

  def feed
    Food.all
  end

end
