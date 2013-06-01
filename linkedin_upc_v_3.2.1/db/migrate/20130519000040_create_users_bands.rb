class CreateUsersBands < ActiveRecord::Migration
  def change
    create_table :users_bands do |t|
      t.integer :band_id
      t.integer :user_id
      t.integer :create_user
      t.integer :edit_user

      t.timestamps
    end
  end
end
