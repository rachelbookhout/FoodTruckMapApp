 require 'net/http'

truckData = Net::HTTP.get("data.streetfoodapp.com", "/1.1/schedule/boston/")
vendorData = JSON.parse(truckData)["vendors"];
vendorData.each do |vendor|
  # if vendor already exists, don't create them
  ven = Foodtruck.find_by name: "#{vendor[1]["name"]}"
  if ven == nil
    #create vendor
    Foodtruck.create(name: "#{vendor[1]["name"]}", url: "#{vendor[1]["url"]}",twitter: "#{vendor[1]["twitter"]}")
  end
    # check to see if location exists within the db
    #if it does, skip
    #if not, create it
  # else create them
   loc = Location.find_by name: "#{vendor[1]["last"]["display"]}"
   if loc == nil
      Location.create(name: "#{vendor[1]["last"]["display"]}", latitude: "#{vendor[1]["last"]["latitude"]}", longitude: "#{vendor[1]["last"]["longitude"]}")
   end
end

