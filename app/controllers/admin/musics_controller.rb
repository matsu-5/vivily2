class Admin::MusicsController < ApplicationController
  def new
  	@music = Music.new
  end

  def edit
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
  end

  def hide
  end

  private
    def music_params
      params.require(:music).permit(:name, :listening, :image)
    end
end
