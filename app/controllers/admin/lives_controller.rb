class Admin::LivesController < ApplicationController
  def new
  	@live = Live.new
  end

  def edit
    @live = Live.find(params[:id])
  end

  def show
    @live = Live.find(params[:id])
  end

  def create
  	@live = Live.new(live_params)

  		if @live.save
        redirect_to admin_homes_live_path
      else
          render :new
     end
  end

  def update
     @live = Live.find(params[:id])
    if @live.update(live_params)
       redirect_to admin_life_path
    else
      render :edit
    end
  end

  def destroy
    live = Live.find(params[:id])
    live.destroy
    redirect_to admin_homes_live_path
  end

  private
    def live_params
      params.require(:live).permit(:title, :details)
    end
end
