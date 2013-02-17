class CandidatesController < ApplicationController
	respond_to :json

	def index
		respond_with Candidate.find_all_by_constituency_id(params[:constituency])
	end
	
end
