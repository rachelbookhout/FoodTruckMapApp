class RenameFoodTruckDayTime < ActiveRecord::Migration
   def self.up
    rename_table :foodtruckLocationDayTimes, :schedules
  end

  def self.down
    rename_table :schedules, :foodtruckLocationDayTimes
  end
end
