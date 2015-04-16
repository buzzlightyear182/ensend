require 'rails_helper'

RSpec.describe "commission_types/edit", type: :view do
  before(:each) do
    @commission_type = assign(:commission_type, CommissionType.create!())
  end

  it "renders the edit commission_type form" do
    render

    assert_select "form[action=?][method=?]", commission_type_path(@commission_type), "post" do
    end
  end
end
