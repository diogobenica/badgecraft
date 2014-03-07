require 'spec_helper'

describe "badge_assertions/edit" do
  before(:each) do
    @badge_assertion = assign(:badge_assertion, stub_model(BadgeAssertion,
      :badge => nil,
      :user => nil
    ))
  end

  it "renders the edit badge_assertion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", badge_assertion_path(@badge_assertion), "post" do
      assert_select "input#badge_assertion_badge[name=?]", "badge_assertion[badge]"
      assert_select "input#badge_assertion_user[name=?]", "badge_assertion[user]"
    end
  end
end
