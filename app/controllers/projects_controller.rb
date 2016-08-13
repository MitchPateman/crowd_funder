class ProjectsController < ApplicationController

  def index
    @projects = Project.all

  end

  def show
    @project = Project.find(params[:id])
    @rewards = @project.rewards
    @pledge = Pledge.new
    @pledge = @project.pledges.build
    @pledges = Pledge.where(project_id: @project.id)
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
    @project.user = current_user
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

  def pledge_params
    params.require(:pledge).permit(:amount)
  end



end
