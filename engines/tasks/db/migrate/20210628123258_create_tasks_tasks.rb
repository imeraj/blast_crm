class CreateTasksTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks_tasks do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
