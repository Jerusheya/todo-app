class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :task_name
      t.date :date
      t.boolean :status

      t.timestamps
    end
  end
end
