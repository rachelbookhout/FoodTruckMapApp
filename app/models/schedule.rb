class Schedule < ActiveRecord::Base
  belongs_to :foodtruck
  belongs_to :day
  belongs_to :mealtime
  belongs_to :location

  def self.search(search)
  if search
    @trucks = where("name LIKE ?", "%#{search}%")

  else
    @trucks = Foodtruck.all;
  end
end
end
