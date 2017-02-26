class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :location

  belongs_to :user

  # Indirect associations

  # Validations
  validates :user_id, :presence => true, :uniqueness => {:scope => :location}
  validates :location_id, :presence => true, :uniqueness => {:scope => :user}
end
