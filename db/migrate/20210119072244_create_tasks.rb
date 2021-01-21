class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      add_foreign_key :author_id
      add_foreign_key :assignee_id
      t.string :state
      t.date :expired_at

      t.timestamps
    end
  end
end
