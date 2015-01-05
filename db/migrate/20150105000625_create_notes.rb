class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :date
      t.text :comment
      t.references :plant, index: true

      t.timestamps
    end
  end
end
