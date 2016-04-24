class EditLocation < ActiveRecord::Migration
  def change
    change_table :locations do |t|
      t.remove :address, :zipcode
      t.integer :latitude, null:false
      t.integer :longitude, null:false
    end
  end
end
