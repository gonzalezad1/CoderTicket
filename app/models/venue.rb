class Venue < ActiveRecord::Base
  belongs_to :event
  belongs_to :region
  validates_uniqueness_of :name
end
