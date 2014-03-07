require 'spec_helper'

describe "badge_assertions/new" do
  before(:each) do
    assign(:badge_assertion, stub_model(BadgeAssertion,
      :badge => nil,
      :user => nil
    ).as_new_record)
  end

  it "renders new badge_assertion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", badge_assertions_path, "post" do
      assert_select "input#badge_assertion_badge[name=?]", "badge_assertion[badge]"
      assert_select "input#badge_assertion_user[name=?]", "badge_assertion[user]"
    end
  end
end
