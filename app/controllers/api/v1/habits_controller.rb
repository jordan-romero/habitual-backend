class Api::V1::HabitsController < ApplicationController

    def index 
        habits = Habit.all 
        render json: habits, status: 200
    end 

end
