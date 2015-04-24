require 'rails_helper'

RSpec.describe "tabs/show", type: :view do
  before(:each) do
    @tab = assign(:tab, Tab.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
