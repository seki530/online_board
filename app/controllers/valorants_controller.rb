class ValorantsController < ApplicationController

  def index
    @valorants = Valorant.all.page(params[:page]).per(10).order(created_at: :desc)
  end

  def create
    @valorant = Valorant.new(valorant_params)
    @valorant.user_id = current_user.id
    @valorant.save
    redirect_to valorants_path
  end

  def show
    @valorant = Valorant.find(params[:id])
    @comment = Comment.new
    @comments = @valorant.comments.page(params[:page]).per(7).reverse_order
  end

  def destroy
    valorant = Valorant.find(params[:id])
    valorant.destroy
    redirect_to valorants_path
  end

  def new
    @valorant = Valorant.new
  end
  
  private

  def valorant_params
    params.require(:valorant).permit(:purpose, :valorant_id, :discord_id, :message, :role, :mode, :user_id)
  end

end