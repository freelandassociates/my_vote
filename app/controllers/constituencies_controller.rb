class ConstituenciesController < ApplicationController
	respond_to :json

	def show
		respond_with Constituency.find_by_postcode(params[:postcode])
	end
	
end
