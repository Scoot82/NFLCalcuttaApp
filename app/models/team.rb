class Team < ActiveRecord::Base
  scope :sold, -> { where("price > 0") }
  attr_accessible :price, :syndicate_id, :available, :name, :image, :wins
  belongs_to :syndicate
  mount_uploader :image, ImageUploader
end
