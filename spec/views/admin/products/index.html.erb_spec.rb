require 'rails_helper'

RSpec.describe "admin/products/index", type: :view do

  let(:current_user) { create(:admin) }

  before(:each) do
    assign(:products, [
      create(:product),
      create(:product, title: "Another kind of product" )
    ])
  end

  it "renders a list of products" do
    render
  end
end
