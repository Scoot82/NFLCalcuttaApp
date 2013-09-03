class SyndicatesController < ApplicationController
  
  def index
    @syndicates = Syndicate.all
  end
  
  def show
    @syndicate = Syndicate.find(params[:id])
    @total_spend = @syndicate.teams.sum('price')
    @dollar_return = -@total_spend + @syndicate.teams.sum('wins') * @win_value
    if @dollar_return > 0
      @percent_return = @dollar_return.to_f / @total_spend.to_f * 100
    else
      @percent_return = "N/A"
    end  
  end
  
end
