class Schedule < ActiveRecord::Base
  belongs_to :foodtruck
  belongs_to :day
  belongs_to :mealtime
  belongs_to :location

  def self.search(search)
    @trucks = [];
  if search
    # check search for cuisines
    @cuisines = Cuisine.where("name LIKE ?", "%#{search}%")
    if !@cuisines.empty?
      @cuisines.each do |cuisine|
        @trucks << Schedule.where(cuisine_id: "%#{cuisine.cuisine_id}%")
      end
    end
    #check search for days
    @days = Day.where("dayofweek LIKE ?", "%#{search}%")
     if !@days.empty?
      @days.each do |day|
        @trucks << Schedule.where(day_id: "#{day.id}%")
      end
     end
    #check search for timeperiod
    @mealtimes = Mealtime.where("meal LIKE ?", "%#{search}%")
     if !@mealtimes.empty?
      @mealtimes.each do |meal|
        @trucks << Schedule.where(mealtime_id: "#{meal.id}%")
      end
     end
    #check search for location
    @locations = Location.where("name LIKE ?", "%#{search}%")
     if !@locations.empty?
      @locations.each do |location|
        @trucks << Schedule.where(location_id: "#{location.id}%")
      end
     end
  else
    @trucks = Schedule.all;
  end
  return @trucks
end
end
