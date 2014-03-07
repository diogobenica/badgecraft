require "spec_helper"

describe BadgeAssertionsController do
  describe "routing" do

    it "routes to #index" do
      get("/badge_assertions").should route_to("badge_assertions#index")
    end

    it "routes to #new" do
      get("/badge_assertions/new").should route_to("badge_assertions#new")
    end

    it "routes to #show" do
      get("/badge_assertions/1").should route_to("badge_assertions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/badge_assertions/1/edit").should route_to("badge_assertions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/badge_assertions").should route_to("badge_assertions#create")
    end

    it "routes to #update" do
      put("/badge_assertions/1").should route_to("badge_assertions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/badge_assertions/1").should route_to("badge_assertions#destroy", :id => "1")
    end

  end
end
