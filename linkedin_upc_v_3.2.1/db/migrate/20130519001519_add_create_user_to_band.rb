class AddCreateUserToBand < ActiveRecord::Migration
  def change
    add_column :bands, :create_user, :integer
  end
end
