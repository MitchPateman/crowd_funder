class PledgesController < ApplicationController

  def new
    
    @pledge = @project.pledges.build
  end

  def create
    @project = Project.find(params[:project_id])
    @pledge = @project.pledges.build(pledge_params)
    @pledge.user = current_user

    if @pledge.save
      redirect_to project_url(@pledge.project)
    else
      render :new
    end
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount)  
  end  

end

