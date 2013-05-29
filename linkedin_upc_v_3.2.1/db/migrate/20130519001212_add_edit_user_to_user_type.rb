class AddEditUserToUserType < ActiveRecord::Migration
  def change
    add_column :user_types, :edit_user, :integer
  end
end
