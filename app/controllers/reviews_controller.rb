class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @space = Space.find(params[:space_id])
    @review = Review.new
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.space = Space.find(params[:space_id])
    if @review.save
      redirect_to space_path(@review.space)
    else
      render 'new'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.space = Space.find(params[:space_id])
    @review.destroy
    redirect_to space_path(@review.space)
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
