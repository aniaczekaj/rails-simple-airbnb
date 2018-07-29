class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end
  def new
    @flat = Flat.new
  end
  def edit
    @flat = Flat.find(params[:id])
  end
  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flats_params)
      redirect_to flats_path(@flat)
    else
      render :new
    end
  end
  def delete
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private
  def flats_params
    params.require(:flat).permit(:name, :address, :number_of_guests, :price_per_night, :description)
  end
end
