class Customers::VideosController < ApplicationController
  def show
  	@video = Video.find(params[:id])
  end

  def index
  	@video = Video.all
  end
end
