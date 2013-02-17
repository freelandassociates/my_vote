class VotesController < ApplicationController
	respond_to :json

	def create
		respond_with Vote.create(params[:entry])
	end
	
end
