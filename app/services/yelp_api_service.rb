require 'rest-client'

class YelpApiService

	def self.delivery_search(term, location)
		url = "https://api.yelp.com/v3/transactions/delivery/search?term=#{term}&location=#{location}&limit=5"
		#Rails.logger.info headers
		response = RestClient.get(url, headers )
		JSON.parse(response.body)
	end

	def self.business_search(term, location)
		url = "something"
		response = RestClient.get(url, headers)
		JSON.parse(response.body)
	end

	def self.headers 
		{
			'Authorization' => "Bearer #{ENV['YELP_ACCESS_TOKEN']}"
		}
	end
end