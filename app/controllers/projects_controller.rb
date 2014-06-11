class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = current_user.projects
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @task = Task.new
  end

  def create
    @project = Project.new(project_params)
    # In Rails 4, flash has become
    # flash.notice
    # flash.alert
    if @project.save
      current_user.projects << @project
      # @project.users << current_user
      redirect_to root_path,
        notice: "Project #{@project.name} created"
    else
      redirect_to root_path, 
        alert: @project.errors.full_messages.join("\n")
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

end
