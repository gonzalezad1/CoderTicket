class RegionsController < ApplicationController
	def new
    @region = Region.new

  end
  
  def create
       @region = Region.new(region_params)
    if @region.save
      redirect_to '/events'
    else
      redirect_to '/signup'
    end
  end

    def region_params
    params.require(:region).permit(:name)
  end  

end
