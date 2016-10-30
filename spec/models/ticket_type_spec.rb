require 'rails_helper'

RSpec.describe TicketType, type: :model do
  
  describe "Associations" do
  it "belongs_to event" do
    assc = described_class.reflect_on_association(:event)
    expect(assc.macro).to eq :belongs_to
  end
end
end
