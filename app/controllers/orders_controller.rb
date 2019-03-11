class OrdersController < ApplicationController
  def index
    @meals = Meal.all
    @orders = Order.all
    @user = current_user
  end

  def show
    @order = Order.find(params[:id])
    @meal = Meal.find(params[:meal_id])
  end

  def new
    @order = Order.new
    @meal = Meal.find(params[:meal_id])
  end

  def create
    @order = Order.new
    @meal = Meal.find(params[:meal_id])
    @order.meal = @meal
    @order.user = current_user
    @order.state = "pending"
    if @order.save
      redirect_to meal_order_path(@order.meal_id, @order.id)
    else
      render :new
    end
  end

  def destroy
    @order = Order.find(params[:id])
    # @meal = Meal.find(params[:meal_id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to meal_path(@order.meal_id), notice: 'Your booking was successfully deleted'}
    end
  end

  private

  # def order_params
  #   params.require(:order).permit(:time)
  # end
end
