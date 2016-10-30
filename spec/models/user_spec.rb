require 'rails_helper'

RSpec.describe User, type: :model do


it "should require a name" do
  User.new(:name => "").should_not be_valid
end
it "should require a email" do
  User.new(:email => "").should_not be_valid
end
it "should require a password" do
  User.new(:password => "").should_not be_valid
end


describe "Associations" do
  it "has_many events" do
    assc = described_class.reflect_on_association(:events)
    expect(assc.macro).to eq :has_many
end
  end


end
