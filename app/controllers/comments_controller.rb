class CommentsController < ApplicationController
  
  
  def create
    valorant = Valorant.find(params[:valorant_id])
    comment = current_user.comments.new(comment_params)
    comment.valorant_id = valorant.id
    comment.save
    redirect_to valorant_path(valorant)
  end
  
  
  def destroy
    Comment.find_by(id: params[:id], valorant_id: params[:valorant_id]).destroy
    redirect_to valorant_path(params[:valorant_id])
  end


  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
  
  
end
