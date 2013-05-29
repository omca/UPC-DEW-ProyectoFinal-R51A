class AddEditUserToLocal < ActiveRecord::Migration
  def change
    add_column :locals, :edit_user, :integer
  end
end
