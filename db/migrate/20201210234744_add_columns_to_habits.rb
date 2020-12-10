class AddColumnsToHabits < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :monday, :boolean, default: false
    add_column :habits, :tuesday, :boolean, default: false
    add_column :habits, :wednesday, :boolean, default: false
    add_column :habits, :thursday, :boolean, default: false
    add_column :habits, :friday, :boolean, default: false
    add_column :habits, :saturday, :boolean, default: false
    add_column :habits, :sunday, :boolean, default: false
  end
end
