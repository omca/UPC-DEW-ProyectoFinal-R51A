class UsersBand < ActiveRecord::Base
  attr_accessible :band_id, :create_user, :edit_user, :user_id
end