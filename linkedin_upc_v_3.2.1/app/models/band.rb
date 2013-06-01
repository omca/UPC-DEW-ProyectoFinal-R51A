class Band < ActiveRecord::Base
  attr_accessible :name, :style_id, :user_id

  belongs_to :style
  belongs_to :concert
  has_many :users_bands
  validates_presence_of :name, :user_id, :style_id
  validates_uniqueness_of :name
end
