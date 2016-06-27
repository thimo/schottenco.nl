class RenameRoleToUserTypeInUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :role, :user_type
  end
end
