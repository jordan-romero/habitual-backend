class Api::V1::HabitsController < ApplicationController
    before_action :set_habit, only: [:update, :destroy]

    def index 
        habits = current_user.habits 
        render json: habits, status: 200
    end 

    def create 
        habit = current_user.habits.build(habit_params)

        if habit.save 
            render json: habit, status: 200
          else
            error_resp = {
              error: habit.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
          end
    end 

    def update
      if @habit.update(habit_params)
          render json: @habit, status: 200
      else
        error_resp = {
          error: @habit.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
    end 

    def destroy
      @habit.destroy
      render json: {notice: 'habit destroyed'}, status: 200
    end


    private 

    def set_habit
      @habit = habit.find_by(id: params[:id])
    end 

    def habit_params
        params.require(:habit).permit(:name, :frequency, :goal_id)
    end 
end