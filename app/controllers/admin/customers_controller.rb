class Admin::CustomersController < ApplicationController
  def show
  end

  def index
  	@customer =Customer.page(params[:page]).per(1)
  	@customers = Customer.all
  end
end
