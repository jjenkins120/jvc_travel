class Destination < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips

    def full_name
        city + ", " + country
    end

    def self.popular_destinations
         top_five = self.all.max_by(5) do |destination_instance|
            destination_instance.trips.count
        end
        top_five
    end
end
