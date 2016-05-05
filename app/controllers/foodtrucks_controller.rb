class FoodtrucksController < ApplicationController

 def index
  #   if params[:search]
  #   @trucks = Foodtruck.search(params[:search]));
  # else
    @trucks = Schedule.search(params[:search])
    #trucks is within the @trucks array, need to query off its food truck id

  # end
        @geojson = []
        @trucks.each do |truck|
          if truck.instance_of? Foodtruck
          @truckinfo = Foodtruck.where(id: "#{truck.id}")
          @truckLocation = Schedule.where(foodtruck_id: "#{truck.id}").limit(1)
            loc = @truckLocation[0]["location_id"]
            @location = Location.where(id: "#{loc}")
          @cuisine = Cuisine.where(cuisine_id: "#{truck.cuisine_id}")

        else
          @truckinfo = Foodtruck.where(id: "#{truck.foodtruck_id}")
          @location = Location.where(id: "#{truck.location_id}")
          @cuisine = Cuisine.where(cuisine_id: "#{@truckinfo[0]["cuisine_id"]}")
        end
          @geojson << {
          type: 'Feature',
          geometry: {
          type: 'Point',
          coordinates: [@location[0]["longitude"], @location[0]["latitude"]]
          },
          properties: {
          name: @truckinfo[0]["name"],
          spot: @location[0]["name"],
          cuisine: @cuisine[0]["name"],
          twitter: @truckinfo[0]["twitter"] ,
          url: @truckinfo[0]["url"],
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
