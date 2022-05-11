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
class Food < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, :description, :photo, :price, presence: true

  def feed
    Food.all
  end

end
