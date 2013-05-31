class User < ActiveRecord::Base
	attr_accessible :sexo, :doc_number, :doc_type_id, :gender, :last_name, :mail, :mail_confirmation, :name, :password, :password_confirmation, :surname, :user_name, :user_type_id  
  	belongs_to :user_type
  	has_many :bands


	validates_presence_of :user_type_id, :name, :last_name, :surname, 
	:doc_type_id, :doc_number, :user_name, :mail, :password

	validates_uniqueness_of :doc_number, :mail
	validates_confirmation_of :password, :mail


	
end
