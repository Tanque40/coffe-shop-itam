# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean
#  name                   :string
#  last_name              :string
#
class User < ApplicationRecord
            # Include default devise modules.
            devise :database_authenticatable, :registerable,
                    :recoverable, :rememberable, :validatable  

  # Relation with food
  has_many :foods

  def feed
    Food.all
  end

  def generate_jwt
    JWT.encode(
      {
        id: id,
        exp: 1.hours.from_now.to_i
      },
      Rails.application.secrets.secret_key_base
    )
  end


end
