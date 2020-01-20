class Admin::InformationsController < ApplicationController
  def new
  	@information = Information.new
  end

  def edit
  end

  def show
  end

  def create
  	@information = Information.new(information_params)

  	respond_to do |format|
      if @information.save
  	    format.html { redirect_to @information, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @information }
        format.js { @status = "success" }
      else
      	format.html { render :new }
        format.json { render json: @information.errors, status: :unprocessable_entity }
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
    def information_params
      params.require(:information).permit(:title, :details, :image)
    end
end