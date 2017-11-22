class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create, :new]
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
