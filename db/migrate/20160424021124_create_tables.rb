class CreateTables < ActiveRecord::Migration
  def change
    create_table :foodtrucks do |t|
      t.integer :foodtruck_id, null:false
      t.string :name, null:false
      t.integer :cuisine_id, null:false
      t.string :photo
      t.string :url
      t.string :twitter
    end

    create_table :locations do |t|
      t.integer :location_id, null:false
      t.string :name, null:false
      t.string :address, null:false
      t.integer :zipcode, null:false
    end

    create_table :days do |t|
      t.integer :day_id, null:false
      t.string :dayofweek, null:false
    end

    create_table :cuisines do |t|
      t.integer :cuisine_id, null:false
      t.string :name
    end

    create_table :mealtimes do |t|
      t.integer :mealtime_id, null:false
      t.string :meal, null:false
    end

    create_table :foodtruckLocationDayTimes do |t|
      t.integer :mealtime_id, null:false
      t.integer :day_id, null:false
      t.integer :foodtruck_id, null:false
      t.integer :location_id, null:false
    end
  end
end
