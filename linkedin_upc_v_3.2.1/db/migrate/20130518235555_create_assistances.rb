class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.integer :concert_id
      t.integer :user_id
      t.integer :assistance_flag
      t.integer :score

      t.timestamps
    end
  end
end
