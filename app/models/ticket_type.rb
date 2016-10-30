class TicketType < ActiveRecord::Base
  belongs_to :event


  def self.available(max_qauntity,quantity)
  	max_quantity = max_quantity -quantity 
  end
end
