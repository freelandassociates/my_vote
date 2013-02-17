class Vote < ActiveRecord::Base
  attr_accessible :candidate_id, :constituency_id, :postcode
end
