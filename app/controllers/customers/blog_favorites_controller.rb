class Customers::BlogFavoritesController < ApplicationController
	before_action :blog_params
  def create
  	@blog_favorite = BlogFavorite.create(customer_id: current_customer.id, blog_id: @blog.id)
  end

  def destroy
  	@blog_favorite = BlogFavorite.find_by(customer_id: current_customer.id, blog_id: @blog.id).destroy
  end

  def blog_params
    @blog = Blog.find(params[:blog_id])
  end
end
