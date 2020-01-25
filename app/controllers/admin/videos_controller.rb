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

  def destroy
    video = Video.find(params[:id])
    video.destroy
    redirect_to admin_homes_movie_path
  end

  private
  def video_params
  	params.require(:video).permit(:title, :video, :image)
  end
end
