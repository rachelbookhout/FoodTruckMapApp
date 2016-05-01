class Foodtruck < ActiveRecord::Base
has_many :locations, through: :schedules
has_many :days, through: :schedules
has_many :mealtimes, through: :schedules
has_one :cuisine
end
