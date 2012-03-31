class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :email
      t.integer :task_id
      t.string :task_name
      t.text :description
      t.datetime :due_date
      t.integer :priority
      t.boolean :isDeleted
      t.boolean :isDone

      t.timestamps
    end
  end
end
