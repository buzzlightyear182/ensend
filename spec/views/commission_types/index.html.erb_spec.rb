require 'rails_helper'

RSpec.describe "commission_types/index", type: :view do
  before(:each) do
    assign(:commission_types, [
      CommissionType.create!(),
      CommissionType.create!()
    ])
  end

  it "renders a list of commission_types" do
    render
  end
end
