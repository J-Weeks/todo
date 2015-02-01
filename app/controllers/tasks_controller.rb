class TasksController < ApplicationController

before_action :set_task, only: [:edit, :update, :destroy]

  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
  end

  def show
    @task = Task.find(params[:id])
    @notes = @task.notes
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    if @task.save
      redirect_to list_path(@list)
    else
      render 'form'
    end
  end

    def update
      @task.update(task_params)
        redirect_to @task
    end

  def destroy
    @task.destroy
  end


  private

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :complete)
    end

end
