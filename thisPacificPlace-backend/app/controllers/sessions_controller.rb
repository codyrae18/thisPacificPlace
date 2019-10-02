class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(name: params[:name])
        session[:user_id] = user.id
        render json: user
        
    end

    def destroy
        session.delete([:user_id])
        user_id = nil
        render json: user
    end
    
end