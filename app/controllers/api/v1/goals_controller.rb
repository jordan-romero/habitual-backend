class Api::V1::GoalsController < ApplicationController

    def index 
        goals = User.all 
        render json: goals, status: 200
    end 

end
