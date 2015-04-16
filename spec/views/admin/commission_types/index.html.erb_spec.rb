require 'rails_helper'

RSpec.describe "admin/commission_types/index", type: :view do
  before(:each) do
    assign(:commission_types, [
      create(:commission_type),
      create(:commission_type, name: "Referrals")
    ])
  end

  it "renders a list of commission_types" do
    render
  end
end
