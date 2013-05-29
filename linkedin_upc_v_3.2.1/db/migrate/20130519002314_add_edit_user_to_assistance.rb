class AddEditUserToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :edit_user, :integer
  end
end
