class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.integer :project_id

      # t.integer :supertask_id

      t.timestamps
    end
  end
end
