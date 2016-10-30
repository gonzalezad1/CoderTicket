require 'rails_helper'



RSpec.describe Event, type: :model do

it "should require a name" do
  Event.new(:name => "").should_not be_valid
end

it "should require a starts_at" do
  Event.new(:starts_at => "").should_not be_valid
end

describe "Associations" do
  it "belongs_to user" do
    assc = described_class.reflect_on_association(:user)
    expect(assc.macro).to eq :belongs_to
  end
end
describe "Associations" do
  it "belongs_to venue" do
    assc = described_class.reflect_on_association(:venue)
    expect(assc.macro).to eq :belongs_to
  end
end

describe "Associations" do
  it "belongs_to category" do
    assc = described_class.reflect_on_association(:category)
    expect(assc.macro).to eq :belongs_to
  end
end
describe "Associations" do
  it "has_many ticket_types" do
    assc = described_class.reflect_on_association(:ticket_types)
    expect(assc.macro).to eq :has_many
  end
end

describe 'display events' do
  context 'when events is past' do
it "incomming_event should me true" do
  event = FactoryGirl.create(:event)
  actual = Event.incoming_event(event.starts_at)
expect(actual).to be_truthy 
end
end
 end

end
