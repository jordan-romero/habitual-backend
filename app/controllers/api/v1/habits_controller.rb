class Api::V1::HabitsController < ApplicationController

    def index 
        habits = current_user.habits 
        render json: habits, status: 200
    end 

end
