class Order < ApplicationRecord
	validates :radius, presence: true, length: {maximum: 2}
	validates :address1, presence: true
	validates :zipcode, presence: true, length: {minimum: 5}
	validates :state, presence: true
	validates :city, presence: true 
end
