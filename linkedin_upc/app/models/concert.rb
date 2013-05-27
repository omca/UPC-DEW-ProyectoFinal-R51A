class Concert < ActiveRecord::Base
	belongs_to:local
	has_many:bands
	has_many:assistance
	has_many:comment
end
