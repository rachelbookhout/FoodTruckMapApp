class FoodTruck < ActiveRecord::Base
has_many :locations, through: :foodtruckLocationDayTimes
has_many :days, through: :foodtruckLocationDayTimes
has_many :mealtimes, through: :foodtruckLocationDayTimes
has_one :cuisine
end
