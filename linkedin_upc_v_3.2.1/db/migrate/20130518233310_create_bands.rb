class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :user_id
      t.integer :style_id

      t.timestamps
    end
  end
end
