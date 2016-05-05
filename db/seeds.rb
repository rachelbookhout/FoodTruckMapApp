 require 'net/http'

truckData = URI.parse("http://bostonfeed.me/backend/getLocation.php")
vendorData = Net::HTTP.get(truckData)
binding.pry
data = JSON.parse(vendorData)
binding.pry

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
