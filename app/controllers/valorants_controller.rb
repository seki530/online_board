class ValorantsController < ApplicationController

  def index
    @valorant = Valorant.new
    @valorants = Valorant.all.page(params[:page]).per(10).order(created_at: :desc)

  end

  def create
    @valorant = Valorant.new(valorant_params)
    @valorant.save
    redirect_to valorants_path
  end

  def show
  end

  def new
  end

  def edit
  end


  private

  def valorant_params
    params.require(:valorant).permit(:purpose, :valorant_id, :discord_id, :message, :role, :mode)
  end
end
