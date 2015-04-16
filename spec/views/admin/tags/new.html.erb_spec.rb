require 'rails_helper'

RSpec.describe "admin/tags/new", type: :view do
  before(:each) do
    assign(:tag, Tag.new())
  end

  it "renders new tag form" do
    render

    assert_select "form[action=?][method=?]", admin_tags_path, "post" do
    end
  end
end
