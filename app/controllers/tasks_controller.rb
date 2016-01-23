class TasksController < ApplicationController
    def index
      @tasks = Task.order('created_at DESC')
      if @status = params[:status]
        case @status
        when 'not_yet'
        @tasks = @tasks.status_is_not_yet
        when 'pending'
        @tasks = @tasks.status_is_pending
        when 'done'
        @tasks = @tasks.status_is_done
        else
          @status = nil
          end
      end
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

  def destroy
    Task.find(params[:id]).destroy
    flash[:success] = "Task deleted"
    redirect_to tasks_path
  end

  private
  
    def task_params
      params.require(:task).permit(:name, :content, :status)
    end

end
