require 'rails_helper'

RSpec.describe "admin/categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      create(:category),
      create(:category, name: "I am another category")
    ])
  end

  it "renders a list of categories" do
    render
  end
end
