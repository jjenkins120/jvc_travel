class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :posts, :dependent => :destroy
  accepts_nested_attributes_for :destination


  def destination_attributes=(destination_attributes)
    city = destination_attributes[:city]
    country = destination_attributes[:country]
    destinations_country = Destination.all.select do |dest|
      dest.country == country
    end
    destination_city = destinations_country.find { |dest| dest.city == city }

    if !destination_city
      destination = Destination.create(city: city, country: country)
    else 
     destination = destination_city
    end

    # byebug

    self.destination_id = destination.id

    #self.destination << destination RETURNS ERROR "no method << for nil"
    # self.destination is nil when checking in byebug
    # byebug

  end



  def display_destination_and_date

    "#{self.destination.city} - #{self.created_at.to_s.split(" ")[0]}"

  end


  
end
