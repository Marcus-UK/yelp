class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def index
    @restaurants = Restaurant.all
  end

  def update
  @restaurant = Restaurant.find(params[:id])

  if @restaurant.update(restaurant_params)
    redirect_to @restaurant
  else
    render 'edit'
  end
end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end
end
