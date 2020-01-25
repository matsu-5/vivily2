class Admin::TopicsController < ApplicationController
  def new
  	@topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def create
  	@topic = Topic.new(topic_params)

  		if @topic.save
  	    redirect_to admin_homes_topic_path
      else
        render :new
      end
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
    redirect_to admin_homes_topic_path
    else
      render :edit
    end
  end

  def destroy
    def destroy
      topic = Topic.find(params[:id])
      topic.destroy
      redirect_to admin_homes_topic_path
    end
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :details)
    end
  end
