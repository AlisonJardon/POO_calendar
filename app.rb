require 'pry'

require_relative 'lib/user.rb'
require_relative 'lib/event.rb'

julie = User.new("julie@gmail.com", 45)
jean = User.new("jean@gmail.com", 35)

my_new_event = Event.new("29-10-10 13:43", 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])



binding.pry
puts "end of file"	