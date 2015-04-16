require 'rails_helper'

RSpec.describe "admin/products/new", type: :view do
  before(:each) do
    assign(:product, Product.new())
    @categories = Category.all
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", admin_products_path, "post" do
    end
  end
end
