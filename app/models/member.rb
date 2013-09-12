class Member < ActiveRecord::Base
  attr_accessible :name, :syndicate_id, :ownership_percent
  belongs_to :syndicate 
end
