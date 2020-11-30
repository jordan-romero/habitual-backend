class CreateHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :habits do |t|
      t.string :name
      t.integer :frequency
      t.integer :progress
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
