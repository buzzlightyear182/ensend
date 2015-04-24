require 'rails_helper'

RSpec.describe "tabs/index", type: :view do
  before(:each) do
    assign(:tabs, [
      Tab.create!(),
      Tab.create!()
    ])
  end

  it "renders a list of tabs" do
    render
  end
end
