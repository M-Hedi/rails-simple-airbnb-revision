class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]


  def index
    search_query = params.dig(:search, :query) # évite les erreurs si search est nil

    if search_query.present?
      @flats = Flat.where("name ILIKE ?", "%#{search_query}%")
    else
      @flats = Flat.all
    end
  end

  def new
    @flat = Flat.new
  end

  def show
    # @flat = Flat.find(params[:id])
  end


  def create
    @flat = Flat.new(params_flat)
    @flat.save
    redirect_to flats_path
  end


  def edit
    # @flat = Flat.find(params[:id])
  end

  def update
    # @flat = Flat.find(params[:id])
    @flat.update(params_flat)
    redirect_to flats_path
  end


  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end



  private

  def params_flat
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

end
