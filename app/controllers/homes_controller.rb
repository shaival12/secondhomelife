class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  def index
    @homes = Home.all
  end

  def show
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    
    if @home.save
      redirect_to @home, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @home.update(home_params)
      redirect_to @home, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @home.destroy
    redirect_to homes_url, notice: 'Home was successfully deleted.'
  end

  private

  def set_home
    @home = Home.find(params[:id])
  end

  def home_params
    params.require(:home).permit(:address, :city, :state, :zip_code, :price, :bedrooms, :bathrooms, :square_feet, :description, :image_url)
  end
end
