class ValorantsController < ApplicationController

  def index
    @valorants = Valorant.all.page(params[:page]).per(10).order(created_at: :desc)
    @valorant = Valorant.new
    
  end

  def create
    valorant = Valorant.new(valorant_params)
    valorant.user_id = current_user.id
    valorant.save
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
    params.require(:valorant).permit(:purpose, :valorant_id, :discord_id, :message, :role, :mode, :user_id)
  end

end
