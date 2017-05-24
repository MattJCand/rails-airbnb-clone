class SpacesController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @spaces = Space.all
    @space = Space.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@space) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def new
    @space = Space.new
  end

  def show
    @space = Space.find(params[:id])
    @space_coordinates = { lat: @space.latitude, lng: @space.longitude }
    @spaces = Space.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@space) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :size, :price_by_day, :photo, :wc, :nails, :drill, :plugs, :windows, :description)
  end
end
