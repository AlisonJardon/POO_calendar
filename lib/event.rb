require 'pry'
require 'time'

class Event
	attr_accessor :start_date, :duration, :title


	def initialize(new_date_event, event_duration, event_name)
		@start_date = Time.parse(new_date_event)
		@duration = event_duration
		@title = event_name
	end

end


# binding.pry
# puts "end of file"


