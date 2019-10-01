class Photo < ApplicationRecord
    has_many :foods
    has_many :cities

end
