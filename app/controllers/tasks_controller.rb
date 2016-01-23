class TasksController < ApplicationController
    def index
            @tasks = Task.all
    end

    def new
            @task = Task.new
    end

  def create
    @task = Task.new(task_params)
    if @task.save
      # success
      flash[:info] = "Created new task!"
      redirect_to tasks_path
    else
      # failure
      render 'new'
    end
  end

  def edit
      @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      # Success
      flash[:success] = "Task updated"
      redirect_to tasks_path
    else
      render 'edit'
    end
  end

  private
  
    def task_params
      params.require(:task).permit(:name, :content, :status)
    end

end
