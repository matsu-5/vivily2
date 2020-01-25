class Admin::DiscsController < ApplicationController
  def new
    @categories = Category.all
  	@disc = Disc.new
  	@disc.disks.build
  	 @disc.disks.each do |disks|
       disks.songs.build
     end
  end

  def edit
    @disc = Disc.find(params[:id])
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
    @disc = Disc.find(params[:id])
    if @disc.update(disc_params)
        redirect_to admin_disc_path
    else
        render :edit
    end
    flash[:success] = 'Wear was successfully updated.'
  end

  def destroy
      disc = Disc.find(params[:id])
      disc.destroy
      redirect_to admin_homes_music_path
  end

  private
  def disc_params
  	params.require(:disc).permit(:image, :name, :category_id, :price, :release_date, :is_deleted, disks_attributes: [:id, :_destroy, :disk_order, songs_attributes: [:id, :name, :song_order, :_destroy]])
  end
end