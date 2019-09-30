class City < ApplicationRecord
    belongs_to :location
    has_many :activities
    has_many :foods
    
end
