class Habit < ApplicationRecord
  belongs_to :goal
  has_many :habit_completions, dependent: :destroy

  validates :name, :frequency, presence: true

  validates :frequency, inclusion: {in: (1..7)}

end
