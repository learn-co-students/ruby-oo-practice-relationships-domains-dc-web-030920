# create files for your ruby classes in this directory
class Guest
    @@guests = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@guests << self
    end

    def listings
        Trip.all.select{|trip|
        trip.guest = self.name
    }.map {|x| x.listing}

    end

    def trips
        Trip.all.select{|trip|
        trip.guest = self.name
    }
    
    end

    def trip_count
        trips.count
    end

    def self.all
        @@guests
    end

    def self.pro_traveller
        guests = Trip.all.map{ |trip| trip.guest}.uniq
       
    end

    def self.find_all_by_name(name)
        x = Trip.all.map{ |trip| trip.guest}
         x.select{|guest| guest.name == name}.uniq
    end
    

end