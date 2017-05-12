class RacecommentsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]
  def new
    @race = Race.find(params[:race_id])
    @racecomment = Racecomment.new
  end
  def create
    @race = Race.find(params[:race_id])
    @racecomment = Racecomment.new(racecomment_params)
    @racecomment.race = @race
    @racecomment.user = current_user
    if @racecomment.save
      redirect_to race_path(@race)
    else
      render :new
    end
  end
  private
  def racecomment_params
    params.require(:racecomment).permit(:content)
  end
end
