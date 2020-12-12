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
      if params[:habitId] 
        @habit = Habit.find_by(id: params[:habitId])
        HabitCompletion.create(date_completed: Date.today, user_id: current_user.id, habit_id: params[:habitId])
        @habit.update(progress: @habit.habit_completions.count)
         
        render json: @habit, status: 200 
      else 
        if @habit.update(habit_params)
          render json: @habit, status: 200
        else
          error_resp = {
            error: @habit.errors.full_messages.to_sentence
          }
          render json: error_resp, status: :unprocessable_entity
        end 
      end 
      # if params[:id]
      #   if params[:progress]
      #     @habit.progress = params[:progress]
      #     render json: @habit, status: 200
      #   elsif @habit.update(habit_params)
      #       render json: @habit, status: 200
      #   else
      #     error_resp = {
      #       error: @habit.errors.full_messages.to_sentence
      #     }
      #     render json: error_resp, status: :unprocessable_entity
      #   end
      # end 
    end 

    def destroy
      @habit.destroy
      render json: {notice: 'habit destroyed'}, status: 200
    end


    private 

    def set_habit
      @habit = Habit.find_by(id: params[:id])
    end 

    def habit_params
        params.require(:habit).permit(:name, :progress, :frequency, :goal_id)
    end 
end