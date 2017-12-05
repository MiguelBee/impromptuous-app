class DeliveriesController < ApplicationController


	def create
		@delivery = Delivery.create(delivery_params)
		if @delivery.save
				redirect_to delivery_path(@delivery)
		else
			flash[:alert] = "Please complete all fields correctly"
			redirect_to root_path
		end
	end

	def show
		delivery = Delivery.find(params[:id])
		results = YelpApiService.delivery_search(delivery.address1, delivery.city, delivery.state)
		@random_choice = results['businesses'].to_a.shuffle.pop
	end

	private

	def delivery_params
		params.require(:delivery).permit(:address1, :address2, :city, :state)
	end
end
