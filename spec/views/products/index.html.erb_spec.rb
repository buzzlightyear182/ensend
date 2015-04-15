require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      create(:product),
      create(:product, title: "Another kind of product", category_id: Category.first.id )
    ])
  end

  it "renders a list of products" do
    render
  end
end
