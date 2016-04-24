class DeleteIds < ActiveRecord::Migration
  def change
    remove_column :foodtrucks, :foodtruck_id
    remove_column :locations, :location_id
  end
end
