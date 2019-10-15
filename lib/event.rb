require 'pry'
require 'time'

class Event
	attr_accessor :start_date, :duration, :title, :attendees


	def initialize(new_date_event, event_duration, event_name, people_email)
		@start_date = Time.parse(new_date_event)
		@duration = event_duration
		@title = event_name
		@attendees = people_email
	end

	def postpone_24h
		@start_date = @start_date + 86400
		return @start_date
	end

	def end_date
		@start_date = @start_date + @duration
		return @start_date
	end

	def is_past?
		@start_date <= Time.now
	end

	def is_future?
		!is_past?
	end

	def is_soon?
		@start_date = start_date - 1800
		@start_date > Time.now
	end

	def to_s
		puts ">Titre : #{@title}"
		puts ">Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
		puts ">Durée : #{@duration} minutes"
		puts ">Invités : #{@attendees.join(', ')}"
		#.join est une méthode qui permet d'afficher les strings d'un array en lui disant comment je veux qu'ils s'affichent avec les parenthèses juste après
	end

end


# binding.pry
# puts "end of file"


