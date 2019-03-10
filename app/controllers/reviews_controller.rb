class ReviewsController < ApplicationController
  def new
    @user = current_user
    @meal = Meal.find(params[:meal_id])
    @review = Review.new
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @review = Review.new(review_params)
    @review.meal = @meal
    @review.user = current_user
    if @review.save
      redirect_to meals_path
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
