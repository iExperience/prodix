class TasksController < ApplicationController
  def create
    # raise
    @task = Task.new(task_params)
    @project = Project.find(params[:task][:project_id])
    @task.project = @project
    if @task.save
      redirect_to @project,
        notice: "Task #{@task.name} created"
    else
      redirect_to @project,
        alert: @task.errors.full_messages.join("\n")
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :due_date)
  end
end
