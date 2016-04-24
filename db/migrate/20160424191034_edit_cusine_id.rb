class EditCusineId < ActiveRecord::Migration
  def change
    change_column :foodtrucks, :cuisine_id, :integer, :null => true
  end
end
