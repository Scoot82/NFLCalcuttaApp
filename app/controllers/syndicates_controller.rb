class SyndicatesController < ApplicationController
  
  def index
  end
  
  def show
    @syndicate = Syndicate.find(params[:id])
    @total = @syndicate.teams.sum('price')
  end
  
end
