class Listing < ApplicationRecord
  belongs_to :model
  has_many :photos
  
  #必須項目
  validates :home_type, presence: true
  validates :pet_type, presence: true
  validates :pet_syze, presence: true
  validates :breeding_years, presence: true
end
