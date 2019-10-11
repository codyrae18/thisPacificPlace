class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        render json: favorites
    end
    
    def new
        favorite = Favorite.new

    end

    def create
        favorite = Favorite.find_or_create_by(favorite_params)
        render json: favorite
    end


    private
    
    def favorite_params
     params.require(:favorite).permit(:user_id, :city_id)
    end
end