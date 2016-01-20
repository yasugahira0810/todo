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
      #log_in @user
      #flash[:success] = "Welcome to the Sample App!"
      #redirect_to @user
    else
      # failure
      render 'new'
    end
  end

  private
  
    def task_params
      params.require(:task).permit(:name, :content, :status)
    end

end
