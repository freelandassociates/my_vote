class Candidate < ActiveRecord::Base
  attr_accessible :candidate_id, :candidate_name, :constituency_id, :party
end
