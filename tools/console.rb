require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
tokyo = Listing.new("Tokyo")
newyork = Listing.new("New York")
city1 = Listing.new("Hartford")
guest1 = Guest.new("Michael")
guest2 = Guest.new("Alex")
guest3 = Guest.new("Steve")
guest4 = Guest.new("Michael")
trip5 = Trip.new(tokyo, guest1)
trip6 = Trip.new(newyork, guest1)
trip1 = Trip.new(city1, guest1)
trip2 = Trip.new(city1, guest2)
trip3 = Trip.new(city1, guest3)
trip4 = Trip.new(tokyo, guest2)
Pry.start
