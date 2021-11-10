class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show ]
  # GET "restaurants" -- index -- Restaurant;
  def index
    @restaurants = Restaurant.all
  end
  # GET "restaurants/new" -- new -- Restaurant;
  def new
    @restaurant = Restaurant.new
  end
  # POST "restaurants" -- create -- Restaurant;
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant was successfully created'
    else
      render :new
    end
  end

  def show
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
  # GET "restaurants/38" -- show -- Restaurant;
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
