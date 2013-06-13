class Style < ActiveRecord::Base
  attr_accessible :name

  has_many :bands
  validates_presence_of :name, :message => "%{value} no puede ser vacio"
end
