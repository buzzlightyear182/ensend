require 'rails_helper'

RSpec.describe "admin/tags/edit", type: :view do
  before(:each) do
    @tag = assign(:tag, create(:tag))
  end

  it "renders the edit tag form" do
    render

    assert_select "form[action=?][method=?]", admin_tag_path(@tag), "post" do
    end
  end
end
