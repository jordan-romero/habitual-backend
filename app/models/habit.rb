class Habit < ApplicationRecord
  belongs_to :goal

  validates :name, :frequency, presence: true

  validates :frequency, inclusion: {in: (1..7)}
end
