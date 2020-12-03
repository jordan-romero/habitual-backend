class Api::V1::GoalsController < ApplicationController

    def index 
        goals = current_user.goals 
        render json: goals, status: 200
    end 

end
