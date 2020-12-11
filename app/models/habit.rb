class Habit < ApplicationRecord
  belongs_to :goal
  has_many :habit_completions, dependent: :destroy

  validates :name, :frequency, presence: true

  validates :frequency, inclusion: {in: (1..7)}

  # def completed_this_week
  #   self.habit_completions.map{|completed| completed.date_completed.strftime("%A") }
  #   # go through all of the HabitCompletions for this Habit that were completed this week, 
  #   # and map them into their days of the week
  #   # return something like [true, false, true, false, false, false, false]
  #   # {monday: true, tuesday: false, wednesday: true, thursday: false, friday: false, saturday: false, sunday: false}
  # end
end
