require 'rails_helper'

RSpec.describe "tabs/new", type: :view do
  before(:each) do
    assign(:tab, Tab.new())
  end

  it "renders new tab form" do
    render

    assert_select "form[action=?][method=?]", tabs_path, "post" do
    end
  end
end
