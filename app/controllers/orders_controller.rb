class OrdersController < ApplicationController

	def index
		@order = Order.all
	end

	def new
		@order = Order.new
	end

	def delivery
	end

	def eat_out
	end

	def create
		# Amount in cents
	#	@amount = (current_order.max_amount * 100).to_i

	#	customer = Stripe::Customer.create(
	#	  :email => params[:stripeEmail],
	#	  :source  => params[:stripeToken]
	#	)

	#	charge = Stripe::Charge.create(
	#	  :customer    => customer.id,
	#	  :amount      => @amount,
	#	  :description => 'Impromptuous Food Order',
	#	  :currency    => 'usd'
  #	)

		@order = Order.create(order_params)
		redirect_to root_path
	#rescue Stripe::CardError => e
	 # flash[:error] = e.message
	#  redirect_to root_path
	end

	def new_quick_search
	end

	def create_quick_search
		term = params[:order][:term]
		location = params[:order][:location]
		@results = YelpApiService.delivery_search(term, location)
	end
	
	private

	def current_order
		@current_order ||= Order.find(parms[:order_id])
	end

	def order_params
		params.require(:order).permit(:vegeterian, :email, :how_many_to_feed, :cold, :max_amount, :address1, :address2, :city, :state, :zip)
	end

end
