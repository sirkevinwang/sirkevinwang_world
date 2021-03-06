class Category < ApplicationRecord
	has_many :photos
  has_many :articles

	scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('name') }
  
end
