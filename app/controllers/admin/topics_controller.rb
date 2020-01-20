class Admin::TopicsController < ApplicationController
  def new
  	@topic = Topic.new
  end

  def edit
  end

  def show
  end

  def create
  	@topic = Topic.new(topic_params)

  	respond_to do |format|
  		if @topic.save
  	    format.html { redirect_to @topic, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
        format.js { @status = "success" }
      else
      	format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
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
    def topic_params
      params.require(:topic).permit(:title, :details, :image)
    end
end
