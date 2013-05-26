class Band < ActiveRecord::Base
	belongs_to:user
	belongs_to:style 
	validates_presence_of :name, :user_id, :style_id
	validates_uniqueness_of :name
end
