class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create, :index]
  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_attr)
    review.restaurant = @restaurant
    review.save
    redirect_to restaurant_reviews_path(@restaurant)
  end

  def index
    @reviews = Review.where(restaurant: @restaurant)
  end

  private

  def review_attr
    params.require(:review).permit(:rating, :content)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
