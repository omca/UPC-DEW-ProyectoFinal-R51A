class Concert < ActiveRecord::Base
  attr_accessible :band_id, :begin_time, :date, :end_time, :local_id, :name, :status
  belongs_to :local
  has_many :bands
  has_many :assistances
  has_many :comments
  validates_presence_of :name
  validates_presence_of :local_id
  validates_presence_of :band_id
end
