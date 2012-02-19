class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :task_id
      t.boolean :isDeleted
      t.boolean :isDone

      t.timestamps
    end
  end
end
