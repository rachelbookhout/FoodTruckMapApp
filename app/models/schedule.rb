class Schedule < ActiveRecord::Base
  belongs_to :foodtruck
  belongs_to :day
  belongs_to :mealtime
  belongs_to :location

#   def self.search(search)
#   if !@trucks.instance_of?(Array) && search != nil
#     @trucks = [];
#     if search != nil
#     # check search for cuisines
#     @cuisines = Cuisine.where("name LIKE ?", "%#{search}%")
#     if !@cuisines.empty?
#       @cuisine_choice = Foodtruck.where(cuisine_id: "#{@cuisines[0]["cuisine_id"]}")
#       @cuisine_choice.each do |cuisine|
#         @trucks << cuisine
#       end
#     end
#     #check search for days
#     @days = Day.where("dayofweek LIKE ?", "%#{search}%")
#     if !@days.empty?
#       @foodtrucksOnDay = Schedule.where(day_id: "#{@days[0]["id"]}")
#       @foodtrucksOnDay.each do |day|
#         @trucks << day
#       end
#     end
#     #check search for timeperiod
#     @mealtimes = Mealtime.where("meal LIKE ?", "%#{search}%")
#      if !@mealtimes.empty?
#       @mealChoice = Schedule.where(mealtime_id: "#{@mealtimes[0]["id"]}")
#       @mealChoice.each do |meal|
#         @trucks << meal
#       end
#     end
#     #check search for location
#     @locations = Location.where("name LIKE ?", "%#{search}%")
#      if !@locations.empty?
#       @locations.each do |location|
#         @trucksLocation = Schedule.where(location_id: "#{location["id"]}")
#         @trucksLocation.each do |loc|
#           @truckInfo = Schedule.where(location_id: "#{loc["id"]}")
#           @truckInfo.each do |l|
#             @trucks << l
#           end
#         end
#       end
#     end
#   end
#   end
#   sleep(2)
#   return @trucks
# end

end
