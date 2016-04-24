class EditFoodTruckId < ActiveRecord::Migration
  def change
    change_column :foodtrucks, :foodtruck_id, :integer, :null => true
    change_column :locations, :location_id, :integer, :null => true
  end
end
