class District < ActiveRecord::Base
  attr_accessible :name

  has_many :locals
  validates_presence_of :name, :message => "%{value} no puede ser vacio"
end
