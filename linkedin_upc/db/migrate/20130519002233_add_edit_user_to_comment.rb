class AddEditUserToComment < ActiveRecord::Migration
  def change
    add_column :comments, :edit_user, :integer
  end
end
