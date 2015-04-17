require 'rails_helper'

RSpec.describe "admin/products/edit", type: :view do

    let(:current_user) { create(:admin) }

  before(:each) do
    @product = assign(:product, create(:product))
    categories = Category.all
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", admin_product_path(@product), "post" do
    end
  end
end
