class AddCreateUserToLocal < ActiveRecord::Migration
  def change
    add_column :locals, :create_user, :integer
  end
end
