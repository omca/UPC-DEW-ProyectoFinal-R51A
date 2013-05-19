class AddEditUserToBand < ActiveRecord::Migration
  def change
    add_column :bands, :edit_user, :integer
  end
end
