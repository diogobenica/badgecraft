require 'spec_helper'

describe "badge_assertions/show" do
  before(:each) do
    @badge_assertion = assign(:badge_assertion, stub_model(BadgeAssertion,
      :badge => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
