class Assistance < ActiveRecord::Base
  attr_accessible :assistance_flag, :concert_id, :score, :user_id

    belongs_to :concert
end
