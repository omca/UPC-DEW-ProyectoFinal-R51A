class UsersBand < ActiveRecord::Base
  attr_accessible :band_id, :create_user, :edit_user, :user_id

  belongs_to :user
  belongs_to :band
  
  validates_presence_of :band_id, :user_id
end
