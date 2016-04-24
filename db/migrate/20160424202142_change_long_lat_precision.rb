class ChangeLongLatPrecision < ActiveRecord::Migration
  def change
    change_column :locations, :longitude, :decimal, precision:10
    change_column :locations, :latitude, :decimal, precision: 10
  end
end
