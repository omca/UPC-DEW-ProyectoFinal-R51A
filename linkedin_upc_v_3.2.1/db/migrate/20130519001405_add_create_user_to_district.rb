class AddCreateUserToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :create_user, :integer
  end
end
