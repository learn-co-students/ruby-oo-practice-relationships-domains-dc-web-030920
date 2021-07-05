require 'pry'
class Guest
    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def trips
        Trip.all.select {|trips| trips.guest == self}
    end

    def trip_count
        trips.count
        # binding.pry
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        Trip.all.map {|trip|trip.guest.name}.uniq
    end
    
    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end
end