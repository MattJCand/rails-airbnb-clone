class ReviewsController < ApplicationController

  def create
    @space = Space.find(params[:space_id])
    @review = Review.new(review_params)
    @review.space = @space
    if @review.save
      respond_to do |format|
        format.html { redirect_to space_path(@space) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'spaces/show' }
        format.js
    end
  end
end

def destroy
  @review = Review.find(params[:id])
  @space = @review.space
  @review_id = @review.id
  @review.destroy
  respond_to do |format|
    format.html {redirect_to space_path(@space)}
    format.js {}
  end
end

  private
  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
