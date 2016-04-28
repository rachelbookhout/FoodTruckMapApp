class Mealtime < ActiveRecord::Base
  has_many :foodtrucks, through: :schedules
end
