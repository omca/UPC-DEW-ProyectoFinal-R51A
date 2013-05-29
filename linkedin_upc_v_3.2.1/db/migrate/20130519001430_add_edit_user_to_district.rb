class AddEditUserToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :edit_user, :integer
  end
end
