class UsersBand < ActiveRecord::Base
  attr_accessible :band_id, :create_user, :edit_user, :user_id

  belongs_to :band
  belongs_to :user
  validates_presence_of :band_id, :user_id
end
