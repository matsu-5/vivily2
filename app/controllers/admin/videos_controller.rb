class Admin::VideosController < ApplicationController
  def new
  	@video = Video.new
  end

  def edit
  end

  def show
  	@video = Video.find(params[:id])
  end

  def create
  	@video = Video.new(video_params)
  	if @video.save
  	redirect_to admin_homes_movie_path
  else
  	render :new
  end
end

  def update
  end

  def hide
  end

  private
  def video_params
  	params.require(:video).permit(:title, :video, :image)
  end
end
