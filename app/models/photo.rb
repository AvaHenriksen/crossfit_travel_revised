class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :location

  belongs_to :user

  # Indirect associations

  # Validations

end
