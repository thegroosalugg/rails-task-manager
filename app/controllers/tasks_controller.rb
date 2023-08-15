# Controller for handling tasks view
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    Task.find(params[:id])
  end
end
