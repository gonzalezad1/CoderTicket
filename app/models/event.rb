class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :category
  has_many :ticket_types
belongs_to :user
  validates_presence_of :name, :starts_at #:extended_html_description, :venue, :category
  #validates_uniqueness_of :name, uniqueness: {scope: [:venue, :starts_at]}

  accepts_nested_attributes_for :venue
#  accepts_nested_attributes_for :category
 # accepts_nested_attributes_for	:ticket_types
require 'date'

def self.incoming_event(begining)
	begining < Date.today
end

def self.search(search)
  where("name ILIKE ?", "%#{search}%") 
  end

def self.validate(event,ticket_type )
	if event.ticket_type.present?
	end
end


end
