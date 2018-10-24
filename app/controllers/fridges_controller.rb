class FridgesController < ApplicationController
  
  def create
    @Fridge = Fridge.create!(fridge_params)
    redirect_to "/fridges/#{@Fridge.id}"
  end

  def destroy
    @fridge = Fridge.find(params[:id])
    @fridge.destroy
    redirect_to "/fridges"
  end

  def index
    @fridges = Fridge.all
  end

  def show
    fridge_id = params[:id]
    @fridge = Fridge.find_by(id: fridge_id)
  end

  def new
    @fridge = Fridge.new
  end

  def edit
    @fridge = Fridge.find(params[:id])
  end

  private

  def fridge_params
    params.require(:fridge).permit(:location, :brand, :size)
  end
end
