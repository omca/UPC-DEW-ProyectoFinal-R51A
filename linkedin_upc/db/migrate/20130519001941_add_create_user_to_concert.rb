class AddCreateUserToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :create_user, :integer
  end
end
