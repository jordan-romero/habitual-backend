class HabitSerializer < ActiveModel::Serializer
  attributes :id, :name, :frequency, :progress, :goal
end
