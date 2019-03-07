class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    marker2 = nil
    @meals = Meal.all
    # querying users that have at least 1 meal
    if params[:query].present?
      @users = User.near(params[:query], 1).joins(:meals).group('users.id').where.not(latitude: nil, longitude: nil)
      results = Geocoder.search(params[:query])
      marker2 = { lat: results.first.coordinates.first, lng: results.first.coordinates.last}

    else
      @users = User.joins(:meals).group('users.id').where.not(latitude: nil, longitude: nil)
    end

    @markers = @users.map do |user|
      {
        lng: user.longitude,
        lat: user.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { user: user })
      }
    end
    @markers << marker2 if marker2
  end

  def show
  end

  def new
    @meal = current_user.meals.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user

    if @meal.save
      redirect_to meal_path(@meal.id)
      params[:post][:dietary_requirement_ids].delete_at(0)
      params[:post][:dietary_requirement_ids].each do |req_id|
        MealDietaryRequirement.create!(dietary_requirement_id: req_id.to_i, meal_id: @meal.id)
      end
    else
      render :new
    end
  end

  def edit
  end

  def update
    MealDietaryRequirement.where(meal_id: params[:id]).destroy_all
    params[:post][:dietary_requirement_ids].delete_at(0)
    params[:post][:dietary_requirement_ids].each do |req_id|
      MealDietaryRequirement.create!(dietary_requirement_id: req_id.to_i, meal_id: params[:id].to_i)
    end
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to meal_path(@meal), notice: 'Congratulations your meal has been succesfully updated'}
      else
        render :edit
        format.html { render :edit }
        format.json { render json: @meal.errors, status: unprocessable_entity }
      end
    end
  end

  def destroy
    @meal.destroy
    redirect_to meals_path
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:id, :name, :description, :price, :type_of, :portions, :pick_up_start, :pick_end,
    :dietary_requirement_ids)
  end
end
