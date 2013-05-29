class AddCreateUserToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :create_user, :integer
  end
end
