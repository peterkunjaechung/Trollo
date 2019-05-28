class TasksController < ApplicationController
  before_action :set_list


  def new
    @tasks = @list.tasks.new
  end

  def create
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to lists_tasks_path(@list)
    else
      render :new
    end
  end

  def destroy
    @task = @list.tasks.find(params[:id])
    @task.destroy
    redirect_to list_tasks_path(@list)
  end

 private
   def set_list
     @list = List.find(params[:list_id]) 
   end

   def task_params
     params.require(:task).permit(:role, :board_id)
   end
end
