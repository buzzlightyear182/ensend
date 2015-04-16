require 'rails_helper'

RSpec.describe "admin/commission_types/show", type: :view do
  before(:each) do
    @commission_type = assign(:commission_type, create(:commission_type))
  end

  it "renders attributes in <p>" do
    render
  end
end
