class FoodtruckLocationDayTime < ActiveRecord::Base
  belongs_to :foodtruck
  belongs_to :day
  belongs_to :mealtime
  belongs_to :location
end
