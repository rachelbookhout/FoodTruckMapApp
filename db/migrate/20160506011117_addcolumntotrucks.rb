class Addcolumntotrucks < ActiveRecord::Migration
  def change
    change_column :trucks, :lat, :decimal
    change_column :trucks, :long, :decimal
    add_column :trucks, :cuisine, :string
  end
end
