
class Api::V1::HabitCompletionsController < ApplicationController
    

    def index 
        habitCompletions = current_user.habit_completions 
        render json: habitCompletions, status: 200
    end 
end 

