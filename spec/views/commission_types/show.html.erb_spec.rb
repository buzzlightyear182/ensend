require 'rails_helper'

RSpec.describe "commission_types/show", type: :view do
  before(:each) do
    @commission_type = assign(:commission_type, CommissionType.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
