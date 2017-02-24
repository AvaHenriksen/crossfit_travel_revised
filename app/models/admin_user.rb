class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :email, :presence => true, :uniqueness
         validates :password, :presence => true
         validates :username, :presence => true, :uniqueness 
end
