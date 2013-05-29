class AddCreateUserToComment < ActiveRecord::Migration
  def change
    add_column :comments, :create_user, :integer
  end
end
