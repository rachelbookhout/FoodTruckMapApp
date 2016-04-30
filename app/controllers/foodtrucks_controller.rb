class FoodtrucksController < ApplicationController

 def index
    if params[:search]
    @trucks = Foodtruck.search(params[:search]));
  else
    @trucks = Foodtruck.all

  end
    @geojson = []
    @trucks.each do |truck|
      @geojson << {
      type: 'Feature',
      geometry: {
      type: 'Point',
      coordinates: [truck.longitude, truck.latitude]
      },
      properties: {
      cuisine: , #add to this
      schedule: , #add to this
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
