class Mealtime < ActiveRecord::Base
  has_many :foodtrucks, through: :foodtruckLocationDayTimes
end
