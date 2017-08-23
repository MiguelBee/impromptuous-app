class OrdersController < ApplicationController

	def index
		@order = Order.all
	end

	def create_delivery
		@order = Order.create(delivery_params)
		redirect_to order_path(@order)
	end

	def create_eat_out
		@order = Order.create(eat_out_params)
		#choice = results.sort_by("RANDOM()").first
		redirect_to order_path(@order)
	end

	def show
		@order = Order.find(params[:id])
		if @order.radius.present?
			radius_in_kilometers = (@order.radius*160).to_i
			logger.info "this radius in kilometers is #{radius_in_kilometers}"
			@results = YelpApiService.business_search(@order.zipcode, radius_in_kilometers)
		else
			@results = YelpApiService.delivery_search(@order.address1, @order.city, @order.state)
		end
	end

	private

	def eat_out_params
		params.require(:order).permit(:radius, :zipcode)
	end

	def delivery_params
		params.require(:order).permit(:address1, :address2, :city, :state)
	end

end
