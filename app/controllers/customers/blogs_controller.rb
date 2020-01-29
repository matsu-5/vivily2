class Customers::BlogsController < ApplicationController
  def show
  	@blog = Blog.find(params[:id])
  	@blog_comment = BlogComment.new #①
    @blog_comments = @blog.blog_comments #②
  end

  def index
  	@blog = Blog.all
  end
end
