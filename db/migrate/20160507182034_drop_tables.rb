class DropTables < ActiveRecord::Migration
  def change
     drop_table :foodtrucks
     drop_table :schedules
     drop_table :days
     drop_table :locations
     drop_table :cuisines
     drop_table :mealtimes
  end
end
