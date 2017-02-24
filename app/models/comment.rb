class Comment < ApplicationRecord
  # Direct associations

  belongs_to :location

  belongs_to :user

  # Indirect associations

  # Validations
  validates :user_id, :presence => true
  validates :location_id, :presence => true
  validates :body, :presence => true

end
