class Admin::LivesController < ApplicationController
  def new
  	@live = Live.new
  end

  def edit
  end

  def show
  end

  def create
  	@live = Live.new(live_params)

  	respond_to do |format|
  		if @live.save
  	    format.html { redirect_to @live, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @live }
        format.js { @status = "success" }
      else
      	format.html { render :new }
        format.json { render json: @live.errors, status: :unprocessable_entity }
        # 追加
        format.js { @status = "fail" }
      end
    end
  end

  def update
  end

  def hide
  end

  private
    def live_params
      params.require(:live).permit(:title, :details, :image)
    end
end
