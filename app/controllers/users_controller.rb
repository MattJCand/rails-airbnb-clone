class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
    @spaces = @user.spaces
    @owner_bookings = Booking.where(space: @spaces)
  end
end
