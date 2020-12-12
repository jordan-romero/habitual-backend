class HabitSerializer < ActiveModel::Serializer
  attributes :goal, :name, :id, :frequency, :progress, :completed_this_week 


  def completed_this_week
    days = object.habit_completions.map{|completed| completed.date_completed.strftime("%A") }
    hash = {
      "Monday": true, 
      "Tuesday": false, 
      "Wednesday": true, 
      "Thursday": true, 
      "Friday": false, 
      "Saturday": false,
      "Sunday": false,
    }
    days.each do |day| 
      if day == hash[:day] 
        hash[:day] = true 
      end
      puts hash 
    end 

    return hash 
  end

  
end
