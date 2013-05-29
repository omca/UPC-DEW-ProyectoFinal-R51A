class AddCreateUserToUser < ActiveRecord::Migration
  def change
    add_column :users, :create_user, :integer
  end
end
