class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :address
      t.integer :district_id
      t.string :maps_x
      t.string :maps_y
      t.string :phone

      t.timestamps
    end
  end
end
