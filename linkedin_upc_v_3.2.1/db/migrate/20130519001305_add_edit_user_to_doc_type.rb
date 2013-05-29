class AddEditUserToDocType < ActiveRecord::Migration
  def change
    add_column :doc_types, :edit_user, :integer
  end
end
