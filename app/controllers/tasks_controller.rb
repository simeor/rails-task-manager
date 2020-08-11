class TasksController < ApplicationController

  # Index
  def index
    @tasks = Task.all
  end

  # Read
  def show
    @task = Task.find(params[:id])
  end

   # New
  def new
    @task = Task.new
  end

   def create
    @task = Task.new(strong_params)
    @task.save
  end

   # Edit
  def edit
    @task = Task.find(params[:id])
  end

   # Update
  def update
    @task = Task.find(params[:id])
    @task.update(strong_params)
    redirect_to tasks_path(@task)
  end

  # Destroy
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end


def strong_params
  params.require(:task).permit(:title, :details, :completed)
end

end
