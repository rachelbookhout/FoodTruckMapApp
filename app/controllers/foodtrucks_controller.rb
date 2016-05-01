class FoodtrucksController < ApplicationController

 def index
  #   if params[:search]
  #   @trucks = Foodtruck.search(params[:search]));
  # else
    @trucks = Schedule.search(params[:search])
    #trucks is within the @trucks array, need to query off its food truck id
    binding.pry


  # end
      @geojson = []
      @trucks.each do |truck|
        @truckinfo = Foodtruck.where(id: "#{truck.foodtruck_id}")
        @location = Location.where(id: "#{truck.location_id}")
        @geojson << {
        type: 'Feature',
        geometry: {
        type: 'Point',
        coordinates: [@location[0]["longitude"], @location[0]["latitude"]]
        },
        properties: {
        cuisine: "Cuisine!",
        :'marker-color' => '#00607d',
        :'marker-symbol' => 'circle',
        :'marker-size' => 'medium'
      }
    }
    end
    respond_to do |format|
      format.html
      format.json { render json: @geojson }
    end
   end
end
