class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @project.attachments.build
    @project.ads.build
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to projects_path
    Rails.logger.info(@project.errors.inspect)
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end


  private

  def project_params
    params.require(:project).permit(:title, :undertitle, :body, attachments_attributes: [:file],   ads_attributes: [:id, :project_id, :title, :description, :content])
  end

end
