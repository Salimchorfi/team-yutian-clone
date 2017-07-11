class JamsController < ApplicationController
  before_action :set_jam, only: [:show, :edit, :update, :destroy]

  def index
    @jams = Jam.all
  end

  def show
    @user = @jam.user
    @comments = @jam.comments
  end

  def new
    @jam = Jam.new
  end

  def edit
  end

  def create
    @jam = Jam.new(jam_params)

    if @jam.save
      redirect_to jam_path(@jam)
    else
      render :new
    end
  end

  def update
    @jam.update(jam_params)
    redirect_to jams_path(@jam)
  end

  def destroy
    @jam.destroy

    redirect_to jams_path
  end

  private

    def jam_params
      params.require(:jam).permit(:name)
    end

    def set_jam
      @jam = Jam.find(params[:id])
    end
end
