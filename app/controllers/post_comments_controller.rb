class Customers::PostCommentsController < ApplicationController
	def create
    @music = Music.find(params[:id]) #①
    @post_comment = @music.post_comments.build(post_comment_params) #②
    @post_comment.customer_id = current_customer.id #③
    if @post_comment.save
      render :show #④
    end
  end

  def destroy
    @post_comment = PostComment.find(params[:id]) #⑤
    if @post_comment.destroy
      render :show #⑥
    end
  end

  private
    def comment_params
      params.require(:post_comment).permit(:comment, :music_id, :customer_id)
    end
end
