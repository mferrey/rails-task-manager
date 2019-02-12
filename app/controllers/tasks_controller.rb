class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    taskfinder
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(title: params[:task][:title], details: params[:task][:details])
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    taskfinder

  end

  def update
    taskfinder
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.delete
    redirect_to tasks_path
  end
end

private

def taskfinder
  @task = Task.find(params[:id])
end

def task_params
  params.require(:task).permit(:title, :details, :completed)
end
