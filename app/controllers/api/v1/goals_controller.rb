class Api::V1::GoalsController < ApplicationController
  before_action :set_goal, only: [:update, :destroy]

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

    def update
      if @goal.update(goal_params)
          render json: @goal, status: 200
      else
        error_resp = {
          error: @goal.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
    end 

    def destroy
      @goal.destroy
      render json: {notice: 'Goal destroyed'}, status: 200
    end


    private 

    def set_goal
      @goal = Goal.find_by(id: params[:id])
    end 

    def goal_params
        params.require(:goal).permit(:name)
    end 
end
