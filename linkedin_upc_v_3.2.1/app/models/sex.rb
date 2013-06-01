class Sex < ActiveRecord::Base
  attr_accessible :name, :name_abv, :status
  has_many :users
end
