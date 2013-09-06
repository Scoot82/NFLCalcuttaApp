class TeamsController < ApplicationController
  
  def index
    @team = Team.all
    @syndicate = Syndicate.all
  end
  
  def show
    @team = Team.find(params[:id])
    if @team.wins > 0
      @return = ((@team.wins * @win_value - @team.price) / @team.price) * 100  
    else
      @return = "NA"
    end
  end
  
  def edit
    @team = Team.find(params[:id])
  end
  
  def update
    @team = Team.find(params[:id])
    @team.update_attributes(params[:team])
    @team.save
    redirect_to root_path
  end
  
end
