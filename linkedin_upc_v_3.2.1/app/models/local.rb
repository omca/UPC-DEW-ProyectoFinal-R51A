class Local < ActiveRecord::Base
attr_accessible :address, :district_id, :gmaps, :latitude, :longitude, :name, :phone
  
	belongs_to :district
	has_many :concerts
  acts_as_gmappable
  def gmaps4rails_address
	address
  end
end
