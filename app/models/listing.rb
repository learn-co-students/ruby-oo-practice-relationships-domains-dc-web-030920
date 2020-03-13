class Listing
    attr_reader :city
    @@listings = []
    def initialize(city)
        @city = city
        @@listings << self
        
    end

    def guests
        @@listings.all.select { |listing| listing}
        
    end
    
    def self.all
        @@listings
    end

    def self.find_all_by_city(city)
            Listing.all.select{|listing| listing.city == city}

    end

    def self.most_popular
        listings = Trip.all.map{ |trip| trip.listing}
        listings.max_by { |i| listings.count(i) }
        # trips.max_by {|i| trips.count(i)}
    
    end



end