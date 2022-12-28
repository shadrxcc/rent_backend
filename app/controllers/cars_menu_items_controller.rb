class CarsMenuItemsController < ApplicationController
  def index
    @carsMenuItems = CarsMenuItem.all
    render json: @carsMenuItems
  end

  def show
    @carsMenuItems = CarsMenuItem.find(params[:id])
    render json: @carsMenuItems
  end

  def create
    @carsMenuItems = CarsMenuItem.create(
      car_name: params[:car_name],
      image_url: params[:image_url],
      price: params[:price],
      car_description: params[:car_description]
    )
    render json: @carsMenuItems
  end

  def update
    @carsMenuItems = CarsMenuItem.find(params[:id])
    @carsMenuItems.update(
      car_name: params[:car_name],
      image_url: params[:image_url],
      price: params[:price],
      car_description: params[:car_description]
    )
    render json: @carsMenuItems
  end

  def destroy
    @carsMenuItems = CarsMenuItem.all
    @carsMenuItems = CarsMenuItem.find(params[:id])
    @carsMenuItems.destroy
    render json: @carsMenuItems
  end
end
