class CreateSexes < ActiveRecord::Migration
  def change
    create_table :sexes do |t|
      t.string :name_abv
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
