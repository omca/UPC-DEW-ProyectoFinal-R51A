class User < ActiveRecord::Base
  attr_accessible :doc_number, :doc_type_id, :gender, :last_name, :mail, :name, :password, :surname, :user_name, :user_type_id
end
