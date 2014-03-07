require 'spec_helper'

describe "BadgeAssertions" do
  describe "GET /badge_assertions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get badge_assertions_path
      response.status.should be(200)
    end
  end
end
