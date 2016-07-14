class PledgesController < ApplicationController

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount)  
  end  

end

