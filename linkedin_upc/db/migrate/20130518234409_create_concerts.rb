class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.integer :local_id
      t.integer :band_id
      t.datetime :date
      t.datetime :begin_time
      t.datetime :end_time
      t.string :status

      t.timestamps
    end
  end
end
