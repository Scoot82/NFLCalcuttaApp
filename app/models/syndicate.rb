class Syndicate < ActiveRecord::Base
  attr_accessible :name
  has_many :teams
  has_many :members
end
