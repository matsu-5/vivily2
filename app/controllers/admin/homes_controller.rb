class Admin::HomesController < ApplicationController
  def topic
  end

  def movie
  	@video = Video.all
  	@movie = Movie.all
  end

  def music
  	@disc = Disc.all.order(created_at: :desc).limit(4)
  	@music = Music.all
  end

  def live
  end
end
