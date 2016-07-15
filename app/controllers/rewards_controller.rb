class RewardsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @reward = @project.rewards.build
  end

  def create
    @project = Project.find(params[:project_id])
    @reward = @project.rewards.build(reward_params)
    if @reward.save
      flash[:notice] = "Reward created!"
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private
  def reward_params
    params.require(:reward).permit(:name, :description, :amountThreshold)
  end
end
