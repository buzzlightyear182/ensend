require 'rails_helper'

RSpec.describe "admin/products/edit", type: :view do

  let(:current_user) { create(:admin) }
  let (:categories) { Category.all }

  before(:each) do
    create(:category)
    @product = assign(:product, create(:product))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", admin_product_path(@product), "post" do
    end
  end
end
