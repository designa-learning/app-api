class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
  end

  def create
    task = Task.new(task_params)
    if task.save
      head :created
    else
      render json: { error: task.errors.full_messages.first }, status: 422
    end
  end

  def update
    task = Task.find(params[:id])
    if task.update(task_params)
      head :created
    else
      render json: { error: task.errors.full_messages.first }, status: 422
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    head :ok
  end

  private

  def task_params
    params.permit(:title, :done)
  end

end