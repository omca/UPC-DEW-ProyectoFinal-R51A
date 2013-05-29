class AddCreateUserToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :create_user, :integer
  end
end
