class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :location

  belongs_to :user

  # Indirect associations

  # Validations
  validates :user_id, :presence => true, :uniqueness
  validates :location_id, :presence => true
end
