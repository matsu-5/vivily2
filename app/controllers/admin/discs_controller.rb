class Admin::DiscsController < ApplicationController
  def new
  	@disc = Disc.new
  	@disc.disks.build
  	 @disc.disks.each do |disks|
       disks.songs.build
     end
  end

  def edit
  end

  def show
  	@disc = Disc.find(params[:id])
  end

  def create
  	@disc = Disc.new(disc_params)
    if @disc.save
  	redirect_to admin_homes_music_path
  else
  	render :new
  end
 end

  def update
  end

  def hide
  end

  private
  def disc_params
  	params.require(:disc).permit(:image, :name, :category, :price, :release_date, :is_deleted, disks_attributes: [:id, :_destroy, :disk_order, songs_attributes: [:id, :name, :song_order, :_destroy]])
  end
end