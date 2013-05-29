class AddCreateUserToUserType < ActiveRecord::Migration
  def change
    add_column :user_types, :create_user, :integer
  end
end
