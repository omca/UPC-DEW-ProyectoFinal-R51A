class Local < ActiveRecord::Base
attr_accessible :address, :district_id, :gmaps, :latitude, :longitude, :name, :phone
  
	belongs_to :district
	has_many :concerts
  
 

validates_presence_of :name, :address, :district_id, :longitude, 
  :latitude, :phone, 
   :message => "%{value} no puede ser vacio"

acts_as_gmappable
  def gmaps4rails_address
	address
  end



  
end
