class TasksController < ApplicationController
    def index
            @task = Task.first
    end
end
