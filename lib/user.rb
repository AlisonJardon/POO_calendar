require 'pry'

class User
	attr_accessor :email, :age
	@@all_users = []

	def initialize(email_to_save, age_to_save)
		@email = email_to_save
		@age = age_to_save
		@@all_users << self
	end

	def self.all
		return @@all_users
	end

	def self.find_by_email(searched_email)
		@@all_users.each do |user|
			if user.email == searched_email
				return user
			else 
				return "NIL"
			end
		end
	end
		

end

binding.pry
puts "end of file"