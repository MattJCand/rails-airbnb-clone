class SpacesController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def show
    @space = Space.find(params[:id])
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
