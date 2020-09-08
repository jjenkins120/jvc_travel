class Destination < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips

    def full_name
        city + ", " + country
    end
end
