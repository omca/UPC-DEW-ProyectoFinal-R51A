class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_type_id
      t.string :name
      t.string :last_name
      t.string :surname
      t.integer :sex_id
      t.integer :doc_type_id
      t.string :doc_number
      t.string :user_name
      t.string :mail
      t.string :password

      t.timestamps
    end
  end
end
