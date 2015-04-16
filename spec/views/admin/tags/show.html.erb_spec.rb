require 'rails_helper'

RSpec.describe "admin/tags/show", type: :view do
  before(:each) do
    @tag = assign(:tag, create(:tag))
  end

  it "renders attributes in <p>" do
    render
  end
end
