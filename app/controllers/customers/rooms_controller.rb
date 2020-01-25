class Customers::RoomsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @customer = current_customer
    @currentEntries = current_customer.entries
    myRoomIds = []
    @currentEntries.each do |entry|
      myRoomIds << entry.room.id
    end
    @anotherEntries = Entry.where(room_id: myRoomIds).where.not(customer_id: @customer.id)
  end

  def show
    @room = Room.find(params[:id])
    #present?の戻り値は真偽値。よって、trueの場合、
    if Entry.where(:customer_id => current_customer.id, :room_id => @room.id).present?
      @direct_messages = @room.direct_messages
      @entries = @room.entries
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def create
    @room = Room.create(:name => "DM")
    @entry1 = Entry.create(:room_id => @room.id, :customer_id => current_customer.id)
    @entry2 = Entry.create(params.require(:room).permit(:customer_id).merge(:room_id => @room.id))
    redirect_to customers_room_path(@room.id)
  end
end
