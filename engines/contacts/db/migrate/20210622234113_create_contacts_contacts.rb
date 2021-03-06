class CreateContactsContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.references :user, foreign_key: { to_table: :core_users }

      t.timestamps
    end
  end
end
