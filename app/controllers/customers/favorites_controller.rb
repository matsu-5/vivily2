class Customers::FavoritesController < ApplicationController
	before_action :music_params
  def create
  	@favorite = Favorite.create(customer_id: current_customer.id, music_id: @music.id)
  end

  def destroy
  	@favorite = Favorite.find_by(customer_id: current_customer.id, music_id: @music.id).destroy
  end

  def music_params
    @music = Music.find(params[:music_id])
  end
end
