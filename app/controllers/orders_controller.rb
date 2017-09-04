class OrdersController < ApplicationController

	def index
		@order = Order.new
	end

	def create_delivery
		@order = Order.create(delivery_params)
		redirect_to delivery_path(@order)
	end

	def create_eat_out
		@order = Order.create(eat_out_params)
		redirect_to eat_out_path(@order)
	end

	def delivery
		order = Order.find(params[:id])
		results = YelpApiService.delivery_search(order.address1, order.city, order.state)
		@random_choice = results['businesses'].to_a.shuffle.pop
	end

	def eat_out
		order = Order.find(params[:id])
		radius_in_kilometers = (order.radius*160).to_i
		results = YelpApiService.business_search(order.zipcode, radius_in_kilometers)
		@random_choice = results['businesses'].to_a.shuffle.pop
	end

	private

	def eat_out_params
		params.require(:order).permit(:radius, :zipcode)
	end

	def delivery_params
		params.require(:order).permit(:address1, :address2, :city, :state)
	end

end
