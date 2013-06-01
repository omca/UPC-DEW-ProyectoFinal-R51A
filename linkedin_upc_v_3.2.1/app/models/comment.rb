class Comment < ActiveRecord::Base
  attr_accessible :concert_id, :text

  belongs_to :concert
end
