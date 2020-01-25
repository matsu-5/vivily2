class Customers::HomesController < ApplicationController
  def about
  end

  def biography
  end

  def top
  end

  def top_second
  	@information = Information.all.order(created_at: :desc).limit(3)
  	@live = Live.all.order(created_at: :desc).limit(3)
  	@video = Video.all.order(created_at: :desc).limit(1)
  end

  def top_third
  	@topics = Topic.all
  	@movie = Movie.all
  	@music = Music.all
  end

  def category
    @category = Category.find(params[:id])
    @discs = Disc.where(category_id: @category.id)
    @categories = Category.all
  end
end
