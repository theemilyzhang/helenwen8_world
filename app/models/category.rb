class Category < ApplicationRecord
	has many :articles
	has_many :photos

	scope :active, 			 -> { where('active = ?', true) }
	scope :alphabetical, -> { order('name') }
  
end
