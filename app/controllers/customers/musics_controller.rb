class Customers::MusicsController < ApplicationController
  def show
  	@music = Music.find(params[:id])
  	@comment = Comment.new #①
    @comments = @music.comments #②
  end

  def index
  	@music = Music.all
  end
end
