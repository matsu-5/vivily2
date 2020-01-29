class Admin::MusicsController < ApplicationController
  def new
  	@music = Music.new
  end

  def edit
    @music = Music.find(params[:id])
  end

  def show
  	@music = Music.find(params[:id])
  end

  def create
  	@music = Music.new(music_params)
  	if @music.save
  	redirect_to admin_homes_music_path
  else
  	render :new
  end
  end

  def update
    @music = Music.find(params[:id])
    if @music.update(music_params)
        redirect_to admin_music_path
    else
        render :edit
    end
    flash[:success] = 'Wear was successfully updated.'
  end

  def destroy
      music = Music.find(params[:id])
      music.destroy
      redirect_to admin_homes_music_path
  end

  private
    def music_params
      params.require(:music).permit(:name, :listening, :image,:comment)
    end
end
