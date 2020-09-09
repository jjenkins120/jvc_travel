class Destination < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips

    def full_name
        city + ", " + country
    end

    def self.popular_destinations
         top_five = self.all.max_by do |destination_instance|
            destination_instance.full_name
        end
        top_five
    end
end
