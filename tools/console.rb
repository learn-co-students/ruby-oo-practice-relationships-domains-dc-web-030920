require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Dave")
guest2 = Guest.new("Lisa")
guest3 = Guest.new("Andrew")

listing1 = Listing.new("New York")
listing2 = Listing.new("Baltimore")
listing3 = Listing.new("Annapolis")
listing4 = Listing.new("Baltimore")
trip1 = Trip.new(listing1,guest1)
trip2 = Trip.new(listing2,guest1)
trip3 = Trip.new(listing4,guest3)

# listing1 = Listing.new()
# listing2 = Listing.new
# listing3 = Listing.new







Pry.start
