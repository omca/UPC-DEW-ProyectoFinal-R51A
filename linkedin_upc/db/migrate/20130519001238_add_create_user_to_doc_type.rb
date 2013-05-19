class AddCreateUserToDocType < ActiveRecord::Migration
  def change
    add_column :doc_types, :create_user, :integer
  end
end
