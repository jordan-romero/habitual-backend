class HabitSerializer < ActiveModel::Serializer
  attributes :goal, :name, :id, :frequency, :progress, :completed_this_week 


  def completed_this_week

    days = object.habit_completions.map{|completed| completed.date_completed.strftime("%A") }

    hash = {
      'Monday': false,
      'Tuesday': false,
      'Wednesday': false,
      'Thursday': false,
      'Friday': false,
      'Saturday': false,
      'Sunday': false
    }

    days.each do |day|
      if hash.key?(day.to_sym)
        hash[day.to_sym] = true
      end
    end
    return hash 
  end
  
  
end
