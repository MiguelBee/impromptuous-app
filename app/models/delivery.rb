class Delivery < ApplicationRecord
	validates :address1, presence: true, length: {minimum: 7}
	validates :city, presence: true, length: {maximum: 10}
	validates :state, presence: true
end
