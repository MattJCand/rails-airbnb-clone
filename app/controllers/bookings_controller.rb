class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.space = Space.find(params[:space_id])
    @price = @booking.space.price_by_day
    @time = @booking.duration
    @booking.price = @price * @time
    @start = @booking.start_day
    @booking.end_day = @start + @time
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_day, :duration, :price, :end_day)
  end
end
