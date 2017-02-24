class Location < ApplicationRecord
  # Direct associations

  belongs_to :city

  has_many   :photos,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :visitors,
             :through => :bookmarks,
             :source => :user

  # Validations

end
