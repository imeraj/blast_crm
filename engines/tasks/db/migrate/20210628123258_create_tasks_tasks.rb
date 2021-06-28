class CreateTasksTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks_tasks do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: { to_table: :core_users }
      t.references :contact, foreign_key: { to_table: :contacts_contact }

      t.timestamps
    end
  end
end
