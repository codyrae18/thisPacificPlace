class Location < ApplicationRecord
    has_many :cities
    has_many :foods, through: :cities
    
end
