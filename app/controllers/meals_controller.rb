class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end
end

