class Schedule < ActiveRecord::Base
  belongs_to :foodtruck
  belongs_to :day
  belongs_to :mealtime
  belongs_to :location

  def self.search(search)
    binding.pry
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
        binding.pry
        @trucks << Schedule.where(location_id: "#{location.id}%")
        binding.pry
      end
     end
     binding.pry
  else
    @trucks = Foodtruck.all;
  end
  binding.pry
  return @trucks
end
end
