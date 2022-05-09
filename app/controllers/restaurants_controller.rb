class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]

  def index
  @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to
  end

  def destroy
    @resturant.destroy
    redirect_to
  end

  def top
    @restaurant = Restaurant.where(category: 'italian')
  end

  def chef
  end


  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
