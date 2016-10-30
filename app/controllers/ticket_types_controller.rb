class TicketTypesController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @ticket_type= TicketType.new
  end

  def create
  	@event = Event.find(params[:event_id])
       @ticket = TicketType.new(ticket_params)
    if @ticket.save
      redirect_to event_path(@event)
    else
      redirect_to '/signup'
    end
  end

  def show
  @event = Event.find(params[:event_id])
  end


    def ticket_params
    params.require(:ticket_type).permit(:name,:price,:max_quantity, :event_id)
  end  
end
