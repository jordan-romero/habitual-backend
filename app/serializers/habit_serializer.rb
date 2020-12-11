class HabitSerializer < ActiveModel::Serializer
  attributes :id, :name, :frequency, :progress, :goal, :completed_this_week
end
