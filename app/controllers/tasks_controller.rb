class TasksController < ApplicationController
    def index
            @tasks = Task.new
    end
end
