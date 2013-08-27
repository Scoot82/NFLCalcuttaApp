class Team < ActiveRecord::Base
  attr_accessible :price, :syndicate_id, :available, :name, :image
  belongs_to :syndicate
  mount_uploader :image, ImageUploader
end
