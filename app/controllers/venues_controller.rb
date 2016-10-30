class VenuesController < ApplicationController
before_action :authorize
		def new
    @regions = Region.all

  end
  
  def create
       @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to '/events'
    else
      redirect_to '/signup'
    end
  end

    def venue_params
    params.require(:venue).permit(:name,:full_address,:region_id, :user_d)
  end  

end
