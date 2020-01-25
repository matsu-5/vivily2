class Admin::HomesController < ApplicationController
  def topic
    @information = Information.all
    @topics = Topic.all
  end

  def movie
  	@video = Video.all
  	@movie = Movie.all
  end

  def music
  	@disc = Disc.all
  	@music = Music.all
    @category = Category.new
    @categories = Category.all
  end

  def category
    @category = Category.find(params[:id])
    @discs = Disc.where(category_id: @category.id)
    @categories = Category.all
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to admin_homes_music_path
  end

  def live
    @live = Live.all
  end

  def top_second
  end
end
