class Concert < ActiveRecord::Base
  attr_accessible :band_id, :begin_time, :date, :end_time, :local_id, :name, :status
end
