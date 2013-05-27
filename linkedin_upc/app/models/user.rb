class User < ActiveRecord::Base
	has_one :user_type
	has_many :bands

	# modificado localmente

	# change online
end
