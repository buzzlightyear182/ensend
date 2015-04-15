require 'rails_helper'

RSpec.describe Category, type: :model do

 it { should have_many(:tags) }

  before :each do
    Category.destroy_all
    create(:category)
  end

  describe "will only be created" do

    it "if no record exists" do
      new_category = create(:category, name: "I am another category")
      expect(Category.count).to eq(2)
      expect(new_category).to eq(Category.last)
    end

  end

  describe "will not be created" do

    it "if record exists" do
      new_category = build(:category, name: "I am a category")
      expect(Category.count).to eq(1)
    end

    it "if name is blank" do
      new_category = build(:category, name: "")
      expect(Category.count).to eq(1)
    end

  end

end
