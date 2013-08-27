class Team < ActiveRecord::Base
  attr_accessible :price, :syndicate_id, :available, :name
  belongs_to :syndicate
end
