class AddEditUserToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :edit_user, :integer
  end
end
