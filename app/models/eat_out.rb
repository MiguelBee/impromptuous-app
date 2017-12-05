class EatOut < ApplicationRecord
	validates :zipcode, presence: true, length: {minimun: 5, maximum: 5}
	validates :radius, presence: true, length: {maximum: 2}
end
