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



Day.create!([
  {day_id: 1, dayofweek: "Sunday"},
  {day_id: 2, dayofweek: "Monday"},
  {day_id: 3, dayofweek: "Tuesday"},
  {day_id: 4, dayofweek: "Wednesday"},
  {day_id: 5, dayofweek: "Thursday"},
  {day_id: 6, dayofweek: "Friday"},
  {day_id: 7, dayofweek: "Saturday"}
])
Foodtruck.create!([
  {name: "Baja Taco Truck", cuisine_id: 1, photo: nil, url: "bajatacotruck.com", twitter: "bajatacotruck"},
  {name: "Bon Me", cuisine_id: 2, photo: nil, url: "bonmetruck.com", twitter: "bonme"},
  {name: "Boston Projuice", cuisine_id: 8, photo: nil, url: "bostonprojuice.com", twitter: "bostonprojuice"},
  {name: "Cameo Macaron", cuisine_id: 3, photo: nil, url: "cameomacaron.com", twitter: "cameomacaron"},
  {name: "Chicken & Rice Guys", cuisine_id: 7, photo: nil, url: "thechickenriceguys.com", twitter: "CnRGuys"},
  {name: "The Coffee Trike", cuisine_id: 3, photo: nil, url: "thecoffeetrike.com", twitter: "thecoffeetrike"},
  {name: "Compliments Food Truck", cuisine_id: 5, photo: nil, url: "complimentsfood.com", twitter: "complimentsfood"},
  {name: "Cookie Monstah", cuisine_id: 3, photo: nil, url: "thecookiemonstah.com", twitter: "MonstahTruck"},
  {name: "Fresh Food Generation", cuisine_id: 9, photo: nil, url: "freshfoodgeneration.com", twitter: "FFGeneration"},
  {name: "Lilo's Plates", cuisine_id: 2, photo: nil, url: "lilosplates.com", twitter: "lilosplates"},
  {name: "Mei Mei Street Kitchen", cuisine_id: 2, photo: nil, url: "meimeiboston.com", twitter: "meimeiboston"},
  {name: "Momogoose", cuisine_id: 2, photo: nil, url: "momogoose.com", twitter: "momogoose"},
  {name: "Moyzilla", cuisine_id: 2, photo: nil, url: "moyzillaboston.com", twitter: "moyzillatruck"},
  {name: "Papi's Stuffed Sopapillas", cuisine_id: 1, photo: nil, url: "stuffedbypapi.com", twitter: "stuffedbypapi"},
  {name: "Posto Mobile", cuisine_id: 4, photo: nil, url: "postomobile.com", twitter: "PostoMobile"},
  {name: "ChikChak Food Truck", cuisine_id: 7, photo: nil, url: "ChikChakFoodTruck.com", twitter: "chikchakboston"},
  {name: "Roxy's Grilled Cheese", cuisine_id: 5, photo: nil, url: "roxysgrilledcheese.com", twitter: "RoxysGrilledChz"},
  {name: "SANTÉ ◦ Mobile Farmhouse Café", cuisine_id: 8, photo: nil, url: "santemobilecafe.com", twitter: "santemobilecafe"},
  {name: "Slideby", cuisine_id: 5, photo: nil, url: "slidebyboston.com", twitter: "slidebyboston"},
  {name: "Sweet Tomatoes Pizza", cuisine_id: 4, photo: nil, url: "sweettomatoespizzatruck.com", twitter: "swttomatotruck"},
  {name: "Taco Party", cuisine_id: 1, photo: nil, url: "tacopartytruck.com", twitter: "tacopartytruck"},
  {name: "Tenoch Mexican", cuisine_id: 1, photo: nil, url: "tenochmexican.com", twitter: "TenochMexican"},
  {name: "Third Cliff Bakery Trike", cuisine_id: 3, photo: nil, url: "thirdcliffbakery.com", twitter: "ThirdCliffBaker"},
  {name: "Zo on the Go", cuisine_id: 6, photo: nil, url: "http://www.zoboston.com/", twitter: "Zo_Boston"},
  {name: "Yummy Bai", cuisine_id: 2, photo: nil, url: "http://www.yummbai.com/", twitter: "Yumm_Bai"},
  {name: "The Dining Car", cuisine_id: 5, photo: nil, url: "http://diningcar.net/", twitter: "thediningcar"},
  {name: "Stoked", cuisine_id: 4, photo: nil, url: "http://www.stokedpizzaco.com/", twitter: "stokedpizza"},
  {name: "Saigon Alley", cuisine_id: 2, photo: nil, url: nil, twitter: "saigon_alley"},
  {name: "Penny Packers", cuisine_id: 5, photo: nil, url: "http://www.pennypackersfinefoods.com/", twitter: "Pennypackers"},
  {name: "Clover", cuisine_id: 8, photo: nil, url: "cloverfoodlab.com", twitter: "cloverfoodtruck"},
  {name: "Zinneken's Waffles", cuisine_id: 3, photo: nil, url: "zinnetruck.com", twitter: "zinnetruck"}
])
Location.create!([
  {name: "High Street, on The Greenway.", latitude: 42.3566935, longitude: -71.05111345},
  {name: "Landmark Center, 343 Park Drive", latitude: 42.34333508, longitude: -71.10262693},
  {name: "Landmark Center", latitude: 42.34356673, longitude: -71.10258423},
  {name: "High Street (Rowes Warf)", latitude: 42.35668844, longitude: -71.05128589},
  {name: "Dewey Sq on the Greenway", latitude: 42.35292217, longitude: -71.05577264},
  {name: "Blossom St (behind MGH)", latitude: 42.363935, longitude: -71.067994},
  {name: "Harvard, outside the Science Center", latitude: 42.37593243, longitude: -71.11713271},
  {name: "Assembly Row Farmer's Market", latitude: 42.39594062, longitude: -71.07919148},
  {name: "Boston Public Library - Boylston & Dartmouth", latitude: 42.34989619, longitude: -71.078017},
  {name: "Dewey Square on the Greenway", latitude: 42.35292361, longitude: -71.05575916},
  {name: "Athena Health off Kingsbury Ave, Watertown", latitude: 42.36237095, longitude: -71.16495262},
  {name: "Tufts University", latitude: 42.40869303, longitude: -71.12186052},
  {name: "PAX East on West Side Drive", latitude: 42.34753665, longitude: -71.04545192},
  {name: "Dewey Square (South Station)", latitude: 42.35281723, longitude: -71.05550439},
  {name: "Clarendon & Boylston", latitude: 42.35056272, longitude: -71.07519393},
  {name: "Clarendon St & Boylston St", latitude: 42.35092947, longitude: -71.07552629},
  {name: "Rowe's Wharf on the Greenway", latitude: 42.35707436, longitude: -71.05064242},
  {name: "Uphams Corner", latitude: 42.31681331, longitude: -71.06496171},
  {name: "Trinity Place (Back Bay)", latitude: 42.34848045, longitude: -71.07582355},
  {name: "Dewey Square on the Greenway", latitude: 42.35285219, longitude: -71.05557304},
  {name: "City Hall Plaza", latitude: 42.35960803, longitude: -71.05892075},
  {name: "Rose Fitzgerald Kennedy Greenway @ Congress St", latitude: 42.35369137, longitude: -71.05360458},
  {name: "High St. on the Greenway (High St. & Atlantic Ave.)", latitude: 42.35665113, longitude: -71.05107141},
  {name: "City Hall Plaza", latitude: 42.35989648, longitude: -71.05753403},
  {name: "Seaport Blvd", latitude: 42.35224234, longitude: -71.04670498},
  {name: "Greenway Milk St & India St", latitude: 42.3585786, longitude: -71.05346984},
  {name: "Greenway Food Truck Festival - The Greenway between Milk & India", latitude: 42.35836573, longitude: -71.05174051},
  {name: "Cambridge Discovery Park", latitude: 42.39930682, longitude: -71.14925299},
  {name: "South end BMC / BU School of Medicine", latitude: 42.33659397, longitude: -71.07320734},
  {name: "B.U. East", latitude: 42.34925696, longitude: -71.10135517},
  {name: "Greenway Food Fest- India St & Atlantic Ave", latitude: 42.35792405, longitude: -71.05165424},
  {name: "Dewey Square. Boston", latitude: 42.35358429, longitude: -71.05613021},
  {name: "Belvidere Street (Between Dalton St and Harrison Ave)", latitude: 42.34596795, longitude: -71.08379407},
  {name: "Rowes Park", latitude: 42.35677922, longitude: -71.05120538},
  {name: "BU East: Commonwealth ave & Silber Way", latitude: 42.34923756, longitude: -71.09913416}
])
Mealtime.create!([
  {mealtime_id: 1, meal: "breakfast"},
  {mealtime_id: 2, meal: "lunch"},
  {mealtime_id: 3, meal: "dinner"}
])
