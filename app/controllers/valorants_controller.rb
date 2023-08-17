class ValorantsController < ApplicationController
  def index
    @valorant = Valorant.new

  end

  def create
    @valorant = Valorant.new(valorant_params)
    @valorant.save
    redirect_to valorants_index_path
  end

  def show
  end

  def new
    @valorant = Valorant.new
  end

  def edit
  end


  private

  def valorant_params
    params.require(:valorant).permit(:purpose, :valorant_id, :discord_id, :message, :role, :mode)
  end
end
