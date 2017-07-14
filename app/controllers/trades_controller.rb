class TradesController < ApplicationController
  def new
    @trade = Trade.new
  end

  def create
    @jam = Jam.find(params[:jam_id])
    @trade = Trade.new
    @trade.user = current_user
    @trade.jam = @jam

    if @trade.save
      redirect_to jams_path
    else
      redirect_to jams_path
    end
  end

end
