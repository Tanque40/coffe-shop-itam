class Category < ApplicationRecord
  has_many :foods

  validates :name, presence: true
  validates :name, uniqueness: { case_insensitive: false }
end
