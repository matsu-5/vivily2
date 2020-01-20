class Customers::CustomersController < ApplicationController
  def edit
  end

  def favorites
  end

  def show
  	@customer = Customer.find(params[:id])
    @currentCustomerEntry = Entry.where(customer_id: current_customer.id)
    @customerEntry=Entry.where(customer_id: @customer.id)
    unless @customer.id == current_customer.id
      @currentCustomerEntry.each do |cu|
        @customerEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end

      unless @isRoom
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def index
  	@customers = Customer.all
  end

  def hide
  end
end
