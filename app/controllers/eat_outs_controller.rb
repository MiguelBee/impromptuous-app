class EatOutsController < ApplicationController

  def create
  	@eat_out = EatOut.create(eat_out_params)

  	if @eat_out.save
			redirect_to eat_out_path(@eat_out)
		else
			flash.alert = "Please fill in all fields correctly"
			redirect_to root_path
		end
  end

  def show
  	eat_out = EatOut.find(params[:id])
		radius_in_kilometers = (eat_out.radius*160).to_i
		results = YelpApiService.business_search(eat_out.zipcode, radius_in_kilometers)
		@random_choice = results['businesses'].to_a.shuffle.pop
  end

end

 private

 	def eat_out_params
		params.require(:eat_out).permit(:radius, :zipcode)
	end