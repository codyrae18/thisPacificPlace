class Food < ApplicationRecord
    has_many :cities
    has_many :locations, through: :cities
    has_many :photos
end
