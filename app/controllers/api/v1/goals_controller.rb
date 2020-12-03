class Api::V1::GoalsController < ApplicationController

    def index 
        goals = current_user.goals 
        render json: goals, status: 200
    end 

    def create 
        goal = current_user.goals.build(goal_params)

        if goal.save 
            render json: goal, status: 200
          else
            error_resp = {
              error: goal.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
          end
    end 


    private 

    def goal_params
        params.require(:goal).permit(:name)
    end 
end
