class AddEditUserToUser < ActiveRecord::Migration
  def change
    add_column :users, :edit_user, :integer
  end
end
