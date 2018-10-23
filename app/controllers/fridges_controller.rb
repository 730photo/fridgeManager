class FridgesController < ApplicationController
  
  def create
    @fridge = Fridge.new(fridge_params)
    if @fridge.save
      redirect_to @fridge
    else
      render :new
    end
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
end
