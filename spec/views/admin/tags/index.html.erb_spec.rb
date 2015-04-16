require 'rails_helper'

RSpec.describe "admin/tags/index", type: :view do
  before(:each) do
    assign(:tags, [
      create(:tag),
      create(:tag, {name: "Just another tag", category_id: Category.first.id })
    ])
  end

  it "renders a list of tags" do
    render
  end
end
