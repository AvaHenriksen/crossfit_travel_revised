class City < ApplicationRecord
  # Direct associations

  has_many   :locations,
             :dependent => :destroy

  validates :name, :presence => true
  validates :state, :presence => true
  validates :region, :presence => true
  # Indirect associations

  # Validations

end
