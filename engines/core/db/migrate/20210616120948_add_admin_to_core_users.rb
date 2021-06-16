class AddAdminToCoreUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :core_users, :admin, :boolean, default: false
  end
end
