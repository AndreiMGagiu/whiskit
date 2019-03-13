class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @meals = Meal.where(user: current_user)
    @user_orders = Order.where(user: current_user).order(created_at: :desc)
    @amount_earned = Order.joins(:meal).where("meals.user_id = ?", current_user.id).map(&:amount_cents).sum / 100
  end
end
