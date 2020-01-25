class Admin::InformationsController < ApplicationController
  def new
  	@information = Information.new
  end

  def edit
    @information = Information.find(params[:id])
  end

  def show
    @information = Information.find(params[:id])
  end

  def create
  	@information = Information.new(information_params)
    if @information.save
       redirect_to admin_homes_topic_path
    else
       render :new
    end
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
       redirect_to admin_homes_topic_path
    else
      render :edit
    end
  end

  def destroy
      information = Information.find(params[:id])
      information.destroy
      redirect_to admin_homes_topic_path
    end

  private
    def information_params
      params.require(:information).permit(:title, :details)
    end
  end