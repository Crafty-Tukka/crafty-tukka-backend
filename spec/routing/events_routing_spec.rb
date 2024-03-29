require "rails_helper"

RSpec.describe EventsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/events").to route_to("events#index")
    end

    it "routes to #show" do
      expect(get: "/events/1").to route_to("events#show", id: "1")
    end


    it "routes to #venuecreate" do
      expect(post: "/events/venuecreate").to route_to("events#venuecreate")
    end

    it "routes to #update via PUT" do
      expect(put: "/events/1").to route_to("events#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/events/1").to route_to("events#destroy", id: "1")
    end
  end
end
