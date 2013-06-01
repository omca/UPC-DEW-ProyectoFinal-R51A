class Local < ActiveRecord::Base
  attr_accessible :address, :district_id, :gmaps, :latitude, :longitude, :name, :phone
  acts_as_gmappable
  def gmaps4rails_address
	address
  end
end
