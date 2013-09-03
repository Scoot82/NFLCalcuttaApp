class TeamsController < ApplicationController
  
  def index
    @team = Team.all
    @syndicate = Syndicate.all
    @total = Team.sum('price')
  end
  
  def show
    @team = Team.find(params[:id])
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
