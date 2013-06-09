class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :address
      t.integer :district_id
      t.float :longitude
      t.float :latitude
      t.string :phone
      t.boolean :gmaps

      t.timestamps
    end
  end
end
