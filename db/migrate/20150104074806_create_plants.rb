class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :strain
      t.string :serial_number
      t.boolean :clone
      t.boolean :harvested

      t.timestamps
    end
  end
end
