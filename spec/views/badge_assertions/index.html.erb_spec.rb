require 'spec_helper'

describe "badge_assertions/index" do
  before(:each) do
    assign(:badge_assertions, [
      stub_model(BadgeAssertion,
        :badge => nil,
        :user => nil
      ),
      stub_model(BadgeAssertion,
        :badge => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of badge_assertions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
