class EventsController < ApplicationController
  before_action :authorize
  def index
    @events = Event.all 
    @tickets = TicketType.all

  if params[:search]
    @events = Event.search(params[:search]).order("created_at DESC")
  else
    @events = Event.all.order('created_at DESC')
end
  end

  def new
    @event = Event.new
    @venues=Venue.all
   # @event.categories.build
    @event.build_venue
  end
  
  def create
       @event = Event.new(params_event)
    if @event.save
      redirect_to new_event_ticket_type_path(@event)
    else
      redirect_to '/signup'
    end
  end
  
  def show
    @event = Event.find(params[:id])
  end

  private

  def params_event
  	params.require(:event).permit(
      :starts_at,:name,:ends_at,:user_id,:hero_image_url,
      :extended_html_description,:category_id,:venue_id,:region_id,
      venues_attributes: [:id, :name,:full_adress])
  end
end
