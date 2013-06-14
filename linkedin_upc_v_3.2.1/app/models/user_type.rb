class UserType < ActiveRecord::Base
  attr_accessible :name

  has_many :users
  validates_presence_of :name, :message => "%{value} no puede ser vacio"
end
