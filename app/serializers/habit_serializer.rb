class HabitSerializer < ActiveModel::Serializer
  attributes :id, :name, :frequency, :progress, :completed_this_week, :goal 
  
  def completed_this_week
    object.habit_completions.map{|completed| completed.date_completed.strftime("%A") }
  end
end
