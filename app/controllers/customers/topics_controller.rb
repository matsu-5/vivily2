class Customers::TopicsController < ApplicationController
  def show
  	@topic = Topic.find(params[:id])
  end

  def index
  	@topics = Topic.all
  end
end
