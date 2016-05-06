class CreateTruckTable < ActiveRecord::Migration

  def change
    create_table :trucks do |t|
      t.string :name, null:false
      t.integer :lat, null:false
      t.integer :long, null:false
      t.string :location
      t.integer :dayofweek_id
      t.integer :open_time
      t.integer :close_time
      t.string :time
    end

     create_table :dayofweeks do |t|
      t.string :day, null:false
    end
  end
end
