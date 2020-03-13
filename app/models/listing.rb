class Listing
    attr_reader :city
    
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
       Trip.all.select {|trips| trips.listing == self} 
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        self.all.select do |each_location|
            each_location.city == city
        end
    end

    def self.most
        array = Trip.all.map {|trips| trips.listing.city}
        cities = Hash.new(0)
        array.each do |city|
            cities[city] +=1
        end
        cities.max_by {|city, value| value}
    end
end