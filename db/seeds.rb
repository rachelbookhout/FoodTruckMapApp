 require 'net/http'

truckData = URI.parse("http://bostonfeed.me/backend/getLocation.php")
vendorData = Net::HTTP.get(truckData)
data = JSON.parse(vendorData)
data.each do |key, hash|
  days = hash["day"]
  #binding.pry
  if days.include? ','
   daysArray = days.split(',')
   daysArray.each do |day|
    Truck.create(name: "#{hash["truck_name"]}", lat: "#{ hash["lat"]}",long: "#{ hash["lng"]}",
    location: "#{  hash["message"]}", dayofweek_id: "#{day}",open_time: "#{  hash["open_time"]}",
    close_time: "#{  hash["close_time"]}", cuisine: "#{ hash["food_type"]}")
   end
  else
    Truck.create(name: "#{hash["truck_name"]}", lat: "#{ hash["lat"]}",long: "#{ hash["lng"]}",
    location: "#{  hash["message"]}", dayofweek_id: "#{days}",open_time: "#{  hash["open_time"]}",
    close_time: "#{  hash["close_time"]}", cuisine: "#{ hash["food_type"]}")
  end
end


Dayofweek.create!([
  {day: "Monday"},
  {day: "Tuesday"},
  {day: "Wednesday"},
  {day:"Thursday"},
  {day:"Friday"},
  {day: "Saturday"},
  {day: "Sunday"}
])
