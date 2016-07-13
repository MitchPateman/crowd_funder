class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @reward = Reward.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_url
    else
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :goal, :date, :url, rewards_attributes: [:name, :description, :amountThreshold])
  end

end
