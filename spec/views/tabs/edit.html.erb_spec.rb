require 'rails_helper'

RSpec.describe "tabs/edit", type: :view do
  before(:each) do
    @tab = assign(:tab, Tab.create!())
  end

  it "renders the edit tab form" do
    render

    assert_select "form[action=?][method=?]", tab_path(@tab), "post" do
    end
  end
end
