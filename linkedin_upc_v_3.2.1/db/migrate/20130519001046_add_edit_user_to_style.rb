class AddEditUserToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :edit_user, :integer
  end
end
