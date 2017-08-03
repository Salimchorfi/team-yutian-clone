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

  def show
    @user = User.find(current_user.id)
    @jams = Jam.where(user_id: @user.id)
    @users_orders = Trade.where(user: @user)
    @trade = Trade.new(user: @user, jam: @jam)
  end

  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy
    redirect_to jams_path
  end

end
