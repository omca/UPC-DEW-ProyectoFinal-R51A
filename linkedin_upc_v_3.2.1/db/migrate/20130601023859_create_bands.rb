class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :style_id
      t.integer :create_user
      t.integer :edit_user

      t.timestamps
    end
  end
end
