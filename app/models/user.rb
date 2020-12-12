class User < ApplicationRecord
    has_secure_password 
    has_many :goals, dependent: :destroy 
    has_many :habit_completions 
    has_many :habits, through: :goals 

    validates :name, :username, presence: true
    validates :username, uniqueness: true
end
