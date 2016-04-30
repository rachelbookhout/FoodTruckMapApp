class Foodtruck < ActiveRecord::Base
has_many :locations, through: :schedules
has_many :days, through: :schedules
has_many :mealtimes, through: :schedules
has_one :cuisine


def self.search(day,time,cuisine,location)
  where(" something LIKE ?", "%#{}%")
end

end
