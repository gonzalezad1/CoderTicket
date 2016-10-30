require "spec_helper"

describe "routes for events" do
  it "routes to /events" do
    { :get => "/events" }.should be_routable
  end
 end

  describe "routes for login" do
  it "routes to /login" do
    { :get => "/login" }.should be_routable

 end
  end
