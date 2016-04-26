# require 'net/http'

# truckData = Net::HTTP.get("data.streetfoodapp.com", "/1.1/schedule/boston/")
# vendorData = JSON.parse(truckData)["vendors"];
# vendorData.each do |vendor|
#   ven = Foodtruck.exists?(['name LIKE ?', "%#{vendor[1]["name"]}%"])

#   if ven == false
#     Foodtruck.create(name: "#{vendor[1]["name"]}", url: "#{vendor[1]["url"]}",twitter: "#{vendor[1]["twitter"]}")
#   end

#   loc = Location.where(["latitude = ? AND longitude = ? ", "#{vendor[1]["last"]["latitude"]}", "#{vendor[1]["last"]["longitude"]}"])
#   if loc.empty? == true
#     Location.create(name: "#{vendor[1]["last"]["display"]}", latitude: "#{vendor[1]["last"]["latitude"]}", longitude: "#{vendor[1]["last"]["longitude"]}")
#   end
# end

FoodtruckLocationDayTime.create!([
  {foodtruck_id: 1, day_id:5 , mealtime_id: 3, location_id: 15},
  {foodtruck_id: 1, day_id:3 , mealtime_id: 2, location_id: 36},
  {foodtruck_id: 1, day_id: 3, mealtime_id: 3, location_id: 15},#
  {foodtruck_id: 2, day_id: 6, mealtime_id: 2, location_id:6 },
  {foodtruck_id: 2, day_id: 6, mealtime_id: 3, location_id:6 },
  {foodtruck_id: 2, day_id: 7, mealtime_id: 2, location_id: 39},
  {foodtruck_id: 2, day_id: 5, mealtime_id: 2, location_id: 19},
  {foodtruck_id: 2, day_id: 4, mealtime_id: 3, location_id: 35 },
  {foodtruck_id: 5, day_id: 6, mealtime_id: 2, location_id: 25},
  {foodtruck_id: 5, day_id: 2, mealtime_id: 3, location_id: 29},
  {foodtruck_id: 5, day_id: 5, mealtime_id: 3, location_id: 29},
  {foodtruck_id: 5, day_id: 3, mealtime_id: 3, location_id: 38 },
    {foodtruck_id: , day_id: , mealtime_id: , location_id: 19}, # chicken & rice
  {foodtruck_id: 5, day_id: 4, mealtime_id: 2, location_id: 19},
  {foodtruck_id: 8, day_id: 7, mealtime_id: 3, location_id:19 },
  {foodtruck_id: 8, day_id: 5, mealtime_id: 2, location_id: 36},
  {foodtruck_id: 11, day_id: 3, mealtime_id: 2, location_id: 5}, #mei mei
  {foodtruck_id: 11, day_id: 6, mealtime_id: 2, location_id: 5}, #
  {foodtruck_id: 11, day_id: 2, mealtime_id: 2, location_id:39 }, #
  {foodtruck_id: 11, day_id: 5, mealtime_id: 2, location_id: 39}, #
  {foodtruck_id: 11, day_id: 4, mealtime_id:2 , location_id: 38}, #
  {foodtruck_id: 13, day_id: 2, mealtime_id: 2, location_id: 29}, #moyzilla
  {foodtruck_id: 13, day_id: 3, mealtime_id: 2, location_id: 21}, #
  {foodtruck_id: 13, day_id: 4, mealtime_id: 2, location_id: 19}, #
  {foodtruck_id: 13, day_id: 4, mealtime_id: 2, location_id: 5}, #
  {foodtruck_id: 13, day_id: 4, mealtime_id: 2, location_id: 5}, #
  {foodtruck_id: 13, day_id: 6, mealtime_id: 2, location_id: 4}, #
  {foodtruck_id: 29, day_id: 3, mealtime_id: 2, location_id: 5},
  {foodtruck_id: 29, day_id: 4, mealtime_id: 2, location_id: 5}, # #
  {foodtruck_id: 21, day_id: 3, mealtime_id: 2, location_id: 39}, #taco party
  {foodtruck_id: 21, day_id: 4, mealtime_id:2 , location_id: 36}, #
  {foodtruck_id: 21, day_id: 2, mealtime_id: 2, location_id: 5 }, #
  {foodtruck_id: 31, day_id: 6, mealtime_id: 2, location_id:30 },#zinnekan
  {foodtruck_id: 31, day_id: 6, mealtime_id: 3, location_id:30 },#
  {foodtruck_id: 31, day_id: 5, mealtime_id:3 , location_id:38 },#
  {foodtruck_id: 31, day_id:4 , mealtime_id: 2, location_id: 37},#
  {foodtruck_id: 31, day_id: 5, mealtime_id:2 , location_id: 4}
])



