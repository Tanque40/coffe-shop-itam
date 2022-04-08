class Food < ApplicationRecord
  belongs_to :user
  
  # For add the user
  before_create :add_user


  def add_user
  
    self.user = current_user

  end

end
