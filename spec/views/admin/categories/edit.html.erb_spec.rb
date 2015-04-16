require 'rails_helper'

RSpec.describe "admin/categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, create(:category))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", admin_category_path(@category), "post" do
    end
  end
end
