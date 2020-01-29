class Customers::BlogCommentsController < ApplicationController
	def create
    @blog = Blog.find(params[:blog_id])
    @blog_comment = @blog.blog_comments.build(blog_comment_params)
    @blog_comment.customer_id = current_customer.id
    if @blog_comment.save!
      @blog_comments = @blog_comment.blog.blog_comments
      render :index
    end
  end

  def destroy
    @blog_comment = BlogComment.find(params[:id])
    if @blog_comment.destroy
       @blog = Blog.find(params[:blog_id])
       @blog_comments = @blog_comment.blog.blog_comments
      render :index
    end
  end

  private
    def blog_comment_params
      params.require(:blog_comment).permit(:content, :blog_id, :customer_id)
    end
end
