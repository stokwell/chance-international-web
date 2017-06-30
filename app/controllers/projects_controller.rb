class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.attachments.build
  end

  def create 
    @project = Project.new(project_params)
    @project.save
    redirect_to projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end


  private

  def project_params
    params.require(:project).permit(:title, :undertitle, :body, attachments_attributes: [:file])
  end

end
