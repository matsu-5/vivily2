class Customers::CommentsController < ApplicationController
  def create
    @music = Music.find(params[:music_id])
    @comment = @music.comments.build(comment_params)
    @comment.customer_id = current_customer.id
    if @comment.save
      render :index
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render :index
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :music_id, :customer_id)
    end
end
