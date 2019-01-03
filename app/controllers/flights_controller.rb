class FlightsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def show
        render json: Flight.find(params[:id])
    end
    
    def index    
        render json: Flight.all
    end

    def create
       flight = Flight.create(deep_link: params[:deep_link], cityTo: params[:cityTo], cityFrom: params[:cityFrom], price: params[:price])
       Like.create(flight_id: flight.id, user_id: params[:user_id] )
       
    end

     def destroy 
        render json: Flight.find(params[:id]).destroy
     end

end
