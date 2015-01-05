class CreatePlantMonitors < ActiveRecord::Migration
  def change
    create_table :plant_monitors do |t|
      t.date :date
      t.string :plant_height
      t.string :water_ph
      t.string :tds_reading
      t.text :comment
      t.references :plant, index: true

      t.timestamps
    end
  end
end
