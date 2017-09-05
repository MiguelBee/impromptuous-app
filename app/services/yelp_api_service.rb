require 'rest-client'

class YelpApiService

	def self.delivery_search(address1, city, state)
		url = "https://api.yelp.com/v3/transactions/delivery/search?term=restaurants&location=#{address1}#{city}#{state}"
		response = RestClient.get(url, headers )
		JSON.parse(response.body)
	end

	def self.business_search(location, radius)
		url = "https://api.yelp.com/v3/businesses/search?location=#{location}&term=restaurants&radius=#{radius}"
		response = RestClient.get(url, headers)
		JSON.parse(response.body)
	end

	def self.headers 
		{
			'Authorization' => "Bearer #{ENV['YELP_ACCESS_TOKEN']}"
		}
	end
end