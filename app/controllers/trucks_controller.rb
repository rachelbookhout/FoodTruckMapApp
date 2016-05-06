 class TrucksController < ApplicationController

  def index
    @trucks = Truck.search(params[:search], params[:type])
    if !@trucks.empty?
    @geojson = []
        @trucks.each do |truck|
          @day = Dayofweek.where(id: truck.dayofweek_id)
          @geojson << {
          type: 'Feature',
          geometry: {
          type: 'Point',
          coordinates: [truck.long, truck.lat]
          },
          properties: {
          name: truck.name,
          spot: truck.location,
          cuisine: truck.cuisine,
          day: @day[0]["day"],
          open_hours: "#{truck.open_time} - #{truck.close_time}",
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
end
