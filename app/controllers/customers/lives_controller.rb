class Customers::LivesController < ApplicationController
  def index
  	@live = Live.all
  end

  def show
  	@live = Live.find(params[:id])
  end
end
