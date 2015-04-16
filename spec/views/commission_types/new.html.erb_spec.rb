require 'rails_helper'

RSpec.describe "commission_types/new", type: :view do
  before(:each) do
    assign(:commission_type, CommissionType.new())
  end

  it "renders new commission_type form" do
    render

    assert_select "form[action=?][method=?]", commission_types_path, "post" do
    end
  end
end
