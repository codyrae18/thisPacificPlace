class Favorite < ApplicationRecord
    belongs_to :user
    has_many :cities
    has_many :locations, through: :cities
    has_many :foods
    has_many :activities
end
