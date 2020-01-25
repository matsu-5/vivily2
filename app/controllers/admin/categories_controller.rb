class Admin::CategoriesController < ApplicationController
  def create
    @category = Category.new(category_params)
  	if @category.save
		redirect_to admin_homes_music_path
	else
	   render :new
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
    redirect_to admin_homes_music_path
    else
      render :edit
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to admin_homes_music_path
  end

  private
	def category_params
		params.require(:category).permit(:name, disc_attributes:[:id, :name, disk_attributes: [:id, :disk_order, song_attributes: [:id, :name]]])
	end
  end
