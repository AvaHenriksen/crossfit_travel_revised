class City < ApplicationRecord
  # Direct associations

  has_many   :locations,
             :dependent => :destroy

  validates :name, :presence => true
  validates :region, :presence => true, :uniqueness
  # Indirect associations

  # Validations

end
