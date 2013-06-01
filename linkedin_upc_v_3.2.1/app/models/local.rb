class Local < ActiveRecord::Base
  attr_accessible :address, :district_id, :maps_x, :maps_y, :name, :phone

  belongs_to :district
  has_many :concerts
end
