class CreateHabitCompletions < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_completions do |t|
      t.date :date_completed
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
