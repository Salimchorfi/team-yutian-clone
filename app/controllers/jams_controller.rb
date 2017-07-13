
class JamsController < ApplicationController
  before_action :set_jam, only: [:show, :edit, :update, :destroy]


  def index
    @jams = Jam.all
    @hash = Gmaps4rails.build_markers(@jams) do |jam, marker|
      marker.lat jam.latitude
      marker.lng jam.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
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

    @jam.user = current_user
    if @jam.save!

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
      params.require(:jam).permit(:category, :photo, :photo_cache, :description, :price, :address, :ingredient)
    end

    def set_jam
      @jam = Jam.find(params[:id])
    end
end
