class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params['id'])
  end

  def new
    # Only defined so we can reuse the form
    @restaurant = Restaurant.find(params['restaurant_id'])
    @review = Review.new
  end

  def create
    # Find the restaurant instance from the
    @restaurant = Restaurant.find(params['restaurant_id'])
    # Create the review from the form contents
    @review = Review.new(review_params)
    # Make the link between the review and the restaurant
    @review.restaurant = @restaurant

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
end
